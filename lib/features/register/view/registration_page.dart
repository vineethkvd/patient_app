import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../controller/registration_controller.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Fetch data after the widget tree is built
      Provider.of<RegistrationController>(context, listen: false)
          .fetchBranchList();
      Provider.of<RegistrationController>(context, listen: false)
          .fetchTreatmentList();
    });
  }

  // @override
  // void dispose() {
  //   Provider.of<RegistrationController>(context, listen: false).clearField();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Container(
        color: AppColor.appMainColor,
        height: height,
        width: width,
        child: SingleChildScrollView(child: Consumer<RegistrationController>(
          builder: (context, registrationController, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 154,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 64),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.arrow_back),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColor.txtColorMain,
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppinsSemiBold",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),

                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter name",
                  hintTxt: "Enter name",
                  controller: registrationController.name,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Whatsapp Number",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter your Whatsapp number",
                  hintTxt: "Enter your Whatsapp number",
                  controller: registrationController.whatsappNum,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter your full address",
                  hintTxt: "Enter your full address",
                  controller: registrationController.address,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0xffd9d9d9)),
                    ),
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white,
                      underline: Container(),
                      hint: registrationController.selectedLocation == null ||
                              registrationController.selectedLocation.isEmpty
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Choose your location',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsRegular",
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    registrationController.selectedLocation,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "poppinsRegular",
                        color: Colors.black,
                      ),
                      items:
                          registrationController.branchListModel.branches!.map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val.location,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "${val.location}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        registrationController.selectedLocation = val!;
                        registrationController.notifyListeners();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Branch",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0xffd9d9d9)),
                    ),
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white,
                      underline: Container(),
                      hint: registrationController.selectedBranch == null ||
                              registrationController.selectedBranch.isEmpty
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Select the branch',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsRegular",
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    registrationController.selectedBranch,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "poppinsRegular",
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "poppinsRegular",
                        color: Colors.black,
                      ),
                      items:
                          registrationController.branchListModel.branches!.map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val.name,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "${val.name}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "poppinsRegular",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        registrationController.selectedBranch = val!;
                        registrationController.notifyListeners();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Total amount",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter total amount",
                  hintTxt: "Enter total amount",
                  controller: registrationController.totalAmt,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Discount amount",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter discount amount",
                  hintTxt: "Enter discount amount",
                  controller: registrationController.discountAmt,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Payment Option",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      child: RadioListTile<String>(
                        title: Text('UPI',style: TextStyle(
                          fontSize: 12,
                          color: AppColor.txtColorMain,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppinsRegular",
                        ),),
                        value: "UPI",
                        groupValue: registrationController.selectedPaymentMethod,
                        onChanged: (value) {
                          registrationController.selectedPaymentMethod = value!;
                          registrationController.notifyListeners();
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: Text('Cash',style: TextStyle(
                          fontSize: 12,
                          color: AppColor.txtColorMain,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppinsRegular",
                        ),),
                        value: "Cash",
                        groupValue: registrationController.selectedPaymentMethod,
                        onChanged: (value) {
                          registrationController.selectedPaymentMethod = value!;
                          registrationController.notifyListeners();
                        },
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: RadioListTile<String>(
                        title: Text('Card',style: TextStyle(
                          fontSize: 12,
                          color: AppColor.txtColorMain,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppinsRegular",
                        ),),
                        value: "Card",
                        groupValue: registrationController.selectedPaymentMethod,
                        onChanged: (value) {
                          registrationController.selectedPaymentMethod = value!;
                          registrationController.notifyListeners();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Advance amount",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter advance amount",
                  hintTxt: "Enter advance amount",
                  controller: registrationController.advanceAmt,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Balance amount",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                SizedBox(height: 6),
                _customTextField(
                  labelTxt: "Enter balance amount",
                  hintTxt: "Enter balance amount",
                  controller: registrationController.balanceAmt,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Treatment date",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                Consumer<RegistrationController>(
                    builder: (context, branchListController, child) {
                  return _customTextField(
                    readOnly: true,
                    suffixIcon: IconButton(
                        onPressed: () async {
                          await branchListController.openCalendar(
                              context: context);
                        },
                        icon: const Icon(Icons.calendar_month)),
                    labelTxt: "Select date",
                    hintTxt: 'Select date',
                    controller: branchListController.date,
                    keyboardType: TextInputType.datetime,
                  );
                }),
                SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Treatment Time",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.txtColorMain,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppinsRegular",
                    ),
                  ),
                ),
                Consumer<RegistrationController>(
                    builder: (context, branchListController, child) {
                  return _customTextField(
                    readOnly: true,
                    suffixIcon: IconButton(
                        onPressed: () async {
                          await branchListController.openTimePicker(
                              context: context);
                        },
                        icon: const Icon(Icons.alarm)),
                    labelTxt: "Select time",
                    hintTxt: 'Select time',
                    controller: branchListController.time,
                    keyboardType: TextInputType.datetime,
                  );
                }),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 5.0,
                    child: InkWell(
                      onTap: () {
                        if (registrationController.name.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter name");
                        } else if (registrationController
                            .whatsappNum.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter whatsapp number");
                        } else if (registrationController
                            .address.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter address");
                        } else if (registrationController
                            .totalAmt.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter total amount");
                        } else if (registrationController
                            .discountAmt.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter discount amount");
                        } else if (registrationController
                            .advanceAmt.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter advance amount");
                        } else if (registrationController
                            .balanceAmt.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Enter balance amount");
                        } else if (registrationController.date.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Select date");
                        } else if (registrationController.time.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Select time");
                        } else {}
                      },
                      child: Container(
                        height: 45,
                        width: width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColor.btnColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "poppinsSemiBold",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          },
        )),
      ),
    );
  }

  Widget _customTextField({
    required String labelTxt,
    required String hintTxt,
    required TextEditingController? controller,
    required TextInputType? keyboardType,
    String? Function(String?)? validator,
    bool obscureText = false,
    IconButton? suffixIcon,
    bool readOnly = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xfff5f5f5),
          suffixIcon: suffixIcon,
          hintText: hintTxt,
          hintStyle: const TextStyle(
            fontSize: 12,
            fontFamily: "poppinsRegular",
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(15.0, 15, 0, 15),
          labelText: labelTxt,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: "poppinsRegular",
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
