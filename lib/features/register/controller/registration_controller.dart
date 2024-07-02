import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../home/model/patient_list_model.dart';
import '../model/branch_list_model/branch_list_model.dart';
import '../model/registration_model.dart';
import '../model/treatment_list_model/treatment_list_model.dart';

class RegistrationController extends ChangeNotifier {
  bool loading = false;
  var selectedLocation = '';
  var selectedBranch = '';
  var selectedPaymentMethod = '';
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
  var branchId = '';
  var listCount = 1;
  var maleList = [];
  var finalList = [];
  var treatmentList = [];
  var femaleList = [];
  var finalMaleList = [];
  var finalFemaleList = [];
  var finalTreatmentList = [];
  void removeTreatment(int index) {
    if (index < treatmentList.length) {
      treatmentList.removeAt(index);
    }
    if (index < maleList.length) {
      maleList.removeAt(index);
    }
    if (index < femaleList.length) {
      femaleList.removeAt(index);
    }
    listCount--;
    notifyListeners();
  }

  BranchListModel branchListModel = BranchListModel();
  Future<void> openCalendar({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColor.btnColor, // header background color
                onPrimary: Colors.white,
                surface: Colors.white, // header text color
                onSurface: AppColor.txtColorMain, // body text color
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
              primary: AppColor.btnColor, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: AppColor.txtColorMain, // body text color
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

      const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.branchList;
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

  //register patient
  String convertMale() {
    var maleStringList = [];
    for (var controller in maleList) {
      maleStringList.add(int.parse(controller.text));
    }
    var maleStringListAsStrings =
        maleStringList.map((e) => e.toString()).toList();
    var joined = maleStringListAsStrings.map((part) => part).join(',');
    print("male $joined");
    return joined;
  }

  String convertFemale() {
    final femaleStringList =
        femaleList.map((controller) => int.parse(controller.text)).toList();
    final femaleStringListAsStrings = femaleStringList.map((e) => e).toList();
    final joined = femaleStringListAsStrings.map((part) => part).join(', ');
    return joined;
  }

  String convertTreatment() {
    final joined = treatmentList.map((part) => part).join(',');
    return joined;
  }

  Future<void> generatePdf({
    required String name,
    required String executive,
    required String payment,
    required String phone,
    required String address,
    required String totalAmount,
    required String discountAmount,
    required String advanceAmount,
    required String balanceAmount,
    required String dateAndTime,
    required String id,
    required String male,
    required String female,
    required String branchId,
    required String treatments,
  }) async {
    final pdf = pw.Document();
    final ByteData imageData = await rootBundle.load(
      AssetsPathes.appLogo,
    );
    final Uint8List imageBytes = imageData.buffer.asUint8List();
    final image = pw.MemoryImage(imageBytes);
    final fontDataBold = await rootBundle.load("assets/fonts/Poppins-Bold.ttf");
    final poppinsBold = pw.Font.ttf(fontDataBold);
    final fontDataSemiBold =
        await rootBundle.load("assets/fonts/Poppins-SemiBold.ttf");
    final poppinSemiBold = pw.Font.ttf(fontDataSemiBold);
    final fontDataRegular =
        await rootBundle.load("assets/fonts/Poppins-Regular.ttf");
    final poppinsRegular = pw.Font.ttf(fontDataRegular);

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(
                      height: 50,
                      width: 50,
                      child: pw.Image(image, fit: pw.BoxFit.cover)),
                  pw.Column(
                    children: [
                      pw.Text(
                        address,
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                          font: poppinsRegular,
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        whatsappNum.text,
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                          font: poppinsRegular,
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        dateAndTime,
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                          font: poppinsRegular,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Divider(),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [

                  pw.Column(   mainAxisAlignment: pw.MainAxisAlignment.start,      crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                    pw.Text(
                      "Patient Details",
                      style: pw.TextStyle(
                          fontSize: 18,
                          fontWeight: pw.FontWeight.bold,
                          font: poppinsRegular,
                          color: PdfColors.green),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Row(
                        mainAxisSize: pw.MainAxisSize.max,
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Name: $name',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Address: $address',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'WhatsApp number: ${whatsappNum.text}',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Executive: $executive',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Payment Mode: $payment',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Male: $male',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Female: $female',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                                              ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Branch ID: $branchId',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Advance amount: ${advanceAmt.text}',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Balance amount: ${balanceAmt.text}',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ]),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            'Total amount: ${totalAmt.text}',
                            style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              font: poppinsRegular,
                            ),
                          ),
                        ])

                  ])
                ],
              ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/patient_registration.pdf');
    await file.writeAsBytes(await pdf.save());

    await OpenFile.open(file.path);
  }

//register
  RegistrationModel registrationModel = RegistrationModel();

  Future<void> registerPatient(
      {required String male,
      required String female,
      required String finalTreatment}) async {
    try {
      loading = true;
      notifyListeners();
      print("treatment$finalTreatment");
      const apiUrl = "https://flutter-amr.noviindus.in/api/PatientUpdate";
      var token = await CacheHelper.getData('token');
      final response =
          await http.post(Uri.parse(apiUrl), headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $token',
      }, body: <String, dynamic>{
        "name": name.text.trim(),
        "excecutive": name.text.trim(),
        "payment": selectedPaymentMethod.trim(),
        "phone": whatsappNum.text.trim(),
        "address": address.text.trim(),
        "total_amount": totalAmt.text.trim(),
        "discount_amount": discountAmt.text.trim(),
        "advance_amount": advanceAmt.text.trim(),
        "balance_amount": balanceAmt.text.trim(),
        "date_nd_time": date.text.trim() + time.text.trim(),
        "id": "",
        "male": male,
        "female": female,
        "branch": branchId,
        "treatments": finalTreatment
      });
      final responseData = json.decode(response.body);
      print(responseData);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("$responseData");
        registrationModel = RegistrationModel.fromJson(responseData);
        if (registrationModel.status == true) {
          generatePdf(
              name: name.text.trim(),
              executive: name.text.trim(),
              payment: selectedPaymentMethod.trim(),
              phone: whatsappNum.text.trim(),
              address: address.text.trim(),
              totalAmount: totalAmt.text.trim(),
              discountAmount: discountAmt.text.trim(),
              advanceAmount: advanceAmt.text.trim(),
              balanceAmount: balanceAmt.text.trim(),
              dateAndTime: date.text.trim() + time.text.trim(),
              id: "",
              male: male,
              female: female,
              branchId: branchId,
              treatments: finalTreatment);
          Fluttertoast.showToast(msg: "${registrationModel.message}");
        } else if (registrationModel.status == false) {
          Fluttertoast.showToast(msg: "${registrationModel.message}");
        }
      } else {
        throw Exception('Failed to register');
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
    treatmentList.clear();
    femaleList.clear();
    maleList.clear();
    listCount = 1;
    notifyListeners();
  }
}
