import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:patient_app/core/utils/configs/styles/colors.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../home/model/patient_list_model.dart';


class HomeController extends ChangeNotifier {
  bool loading = false;
  PatientListModel patientListModel = PatientListModel();
  final TextEditingController date = TextEditingController();
  Future<void> openCalendar({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary:AppColor.btnColor, // header background color
                onPrimary: Colors.white, // header text color
                onSurface:AppColor.txtColorMain, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: AppColor.txtColorMain, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());

    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      date.text = formattedDate;
      notifyListeners();
    } else {
      print("failed");
    }
  }

  Future<void> fetchPatientList() async {
    try {
      loading = true;
      notifyListeners();

      final apiUrl = ApiEndPoints.baseURL + ApiEndPoints.patientList;
      var token = await CacheHelper.getData('token');

      final response = await http.get(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("$responseData");
        patientListModel = PatientListModel.fromJson(responseData);
        if (patientListModel.status == true) {
          Fluttertoast.showToast(msg: "${patientListModel.message}");
        } else if (patientListModel.status == false) {
          Fluttertoast.showToast(msg: "${patientListModel.message}");
        }
      } else {
        throw Exception('Failed to fetch patient list.');
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
}
