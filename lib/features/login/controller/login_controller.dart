import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:patient_app/features/home/view/home_page.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../model/login_model.dart';

class LoginController extends ChangeNotifier {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool passwordVisible = true;
  bool loading = false;
  LoginModel loginModel = const LoginModel();

  Future<void> loginUser(
      {required String username,
      required String password,
      required BuildContext context}) async {
    try {
      loading = true;
      notifyListeners();
      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.login;
      final requestData = <String, dynamic>{
        "username": username,
        "password": password
      };
      var payload = json.encode(requestData);
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: <String, dynamic>{
          'username': username,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("$responseData");
        loginModel = LoginModel.fromJson(responseData);
        if (loginModel.status == true) {
          CacheHelper.saveData("token", loginModel.token!.toString());
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
          Fluttertoast.showToast(msg: "${loginModel.message}");
        } else if (loginModel.status == false) {
          Fluttertoast.showToast(msg: "${loginModel.message}");
        }
      } else {
        throw Exception('Failed to login.');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<bool?> showToastMsg(String message) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
      webBgColor: "linear-gradient(to right, #000000, #434343)",
      webPosition: "bottom",
    );
  }

  void updateVisibility() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
