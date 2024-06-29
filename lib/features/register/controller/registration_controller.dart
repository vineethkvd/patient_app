import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../home/model/patient_list_model.dart';
import '../model/branch_list_model/branch_list_model.dart';
import '../model/treatment_list_model/treatment_list_model.dart';

class RegistrationController extends ChangeNotifier {
  bool loading = false;
  var selectedLocation = '';
  var selectedBranch = '';
  var selectedPaymentMethod='';
  final TextEditingController date = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController whatsappNum = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController branch = TextEditingController();
  final TextEditingController totalAmt = TextEditingController();
  final TextEditingController discountAmt = TextEditingController();
  final TextEditingController advanceAmt = TextEditingController();
  final TextEditingController balanceAmt = TextEditingController();

  BranchListModel branchListModel = BranchListModel();
  Future<void> openCalendar({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary:AppColor.btnColor, // header background color
                onPrimary: Colors.white,
                surface: Colors.white,// header text color
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

  Future<void> openTimePicker({required BuildContext context}) async {
    TimeOfDay? pickedTime = await showTimePicker(
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
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
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      String formattedTime = pickedTime.format(context);
      time.text = formattedTime;
      notifyListeners();
    } else {
      print("Time selection failed");
    }
  }

  //branch list api

  Future<void> fetchBranchList() async {
    try {
      loading = true;
      notifyListeners();

      final apiUrl = ApiEndPoints.baseURL + ApiEndPoints.branchList;
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
        branchListModel = BranchListModel.fromJson(responseData);
        if (branchListModel.status == true) {
          // Fluttertoast.showToast(msg: "${branchListModel.message}");
        } else if (branchListModel.status == false) {
          Fluttertoast.showToast(msg: "${branchListModel.message}");
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

//treatment list api
  TreatmentListModel treatmentListModel = TreatmentListModel();
  Future<void> fetchTreatmentList() async {
    try {
      loading = true;
      notifyListeners();

      final apiUrl = ApiEndPoints.baseURL + ApiEndPoints.treatmentList;
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
        treatmentListModel = TreatmentListModel.fromJson(responseData);
        if (treatmentListModel.status == true) {
          // Fluttertoast.showToast(msg: "${treatmentListModel.message}");
        } else if (treatmentListModel.status == false) {
          Fluttertoast.showToast(msg: "${treatmentListModel.message}");
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

  void clearField() {
    date.clear();
    time.clear();
    name.clear();
    whatsappNum.clear();
    location.clear();
    branch.clear();
    totalAmt.clear();
    discountAmt.clear();
    advanceAmt.clear();
    balanceAmt.clear();
    notifyListeners();
  }
}
