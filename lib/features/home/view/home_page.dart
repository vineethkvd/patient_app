import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_app/features/register/view/registration_page.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../login/controller/login_controller.dart';
import '../../login/view/login_page.dart';
import '../controller/home_controller.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    // Fetch patient list when HomePage initializes
    Provider.of<HomeController>(context, listen: false).fetchPatientList();
  }

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
        child: Consumer<HomeController>(
          builder: (context, homeController, child) {
            var patientList = homeController.patientListModel.patient;
            if (patientList == null) {
              // Handle loading state with shimmer effect
              return Center(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 166,
                        width: width,
                      ),
                    ),
                  ),
                ),
              );
            }

            if (patientList.isEmpty) {
              // Handle case where patientList is empty
              return Center(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 166,
                        width: width,
                      ),
                    ),
                  ),
                ),
              );
            }

            // Display the list if patientList is not empty
            return Column(
              children: [
                SizedBox(
                  height: 242,
                  width: width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 62,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () {
                                  showLogoutDialog(context);
                                },
                                child: Icon(Icons.arrow_back)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.74,
                            child: _customTextField(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                              labelTxt: "Search for treatments",
                              controller: null,
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(15.0),
                            elevation: 5.0,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 85,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor.btnColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: const Text(
                                  'Search',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: "poppinsSemiBold",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sort by :",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: SizedBox(
                              height: 60,
                              width: 150,
                              child: _customTextFieldDate(
                                readOnly: true,
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      await homeController.openCalendar(
                                          context: context);
                                    },
                                    icon: const Icon(Icons.arrow_drop_down)),
                                labelTxt: "Date",
                                hintTxt: 'Select date',
                                controller: homeController.date,
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: patientList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var patient = patientList[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 166,
                          width: width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "${patient.id!} . ${patient.name}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: "poppinsSemiBold",
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  patient.patientdetailsSet!.isEmpty
                                      ? 'No treatment details'
                                      : "${patient.patientdetailsSet!.first.treatmentName!}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff006837),
                                    fontFamily: "poppinsRegular",
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_rounded,
                                          size: 20,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          patient.dateNdTime!.isEmpty
                                              ? 'No date'
                                              : DateFormat('yyyy-MM-dd').format(
                                                  DateTime.parse(
                                                      patient.dateNdTime!)),
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                            fontFamily: "poppinsRegular",
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 30),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.group,
                                          size: 20,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${patient.user ?? 'No user'}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45,
                                            fontFamily: "poppinsRegular",
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.black54,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View Booking details",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontFamily: "poppinsRegular",
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {

                                      },
                                      child: SvgPicture.asset(
                                        "assets/images/arraow_right.svg",
                                        height: 30,
                                        width: 30,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 5.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationPage(),
                        ));
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
                          'Register Now',
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
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _customTextField({
    String labelTxt = '',
    String hintTxt = '',
    required TextEditingController? controller,
    required TextInputType? keyboardType,
    String? Function(String?)? validator,
    bool obscureText = false,
    IconButton? suffixIcon,
    Icon? prefixIcon,
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
          prefixIcon: prefixIcon,
          hintText: hintTxt.isNotEmpty
              ? hintTxt
              : null, // Use hintText only if it's not empty
          hintStyle: const TextStyle(
            fontSize: 12,
            fontFamily: "poppinsRegular",
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(15.0, 15, 0, 15),
          labelText: labelTxt,
          floatingLabelBehavior:
              FloatingLabelBehavior.auto, // Automatically float label
          labelStyle: const TextStyle(
            fontSize: 14,
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

  Widget _customTextFieldDate({
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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: suffixIcon,
          fillColor: const Color(0xfff5f5f5),
          hintText: hintTxt,
          hintStyle: const TextStyle(
            fontSize: 9,
            overflow: TextOverflow.ellipsis,
            fontFamily: "poppinsRegular",
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
          labelText: labelTxt,
          labelStyle: const TextStyle(
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
            fontFamily: "poppinsRegular",
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffd9d9d9)),
          ),
        ),
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Logout',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontFamily: "poppinsSemiBold",
            ),
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontFamily: "poppinsRegular",
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          actions: [
            TextButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              onPressed: () {
                CacheHelper.clearData("token");
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
