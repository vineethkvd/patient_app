import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../controller/registration_controller.dart';

class TreatmentWidget extends StatefulWidget {
  const TreatmentWidget({Key? key}) : super(key: key);

  @override
  State<TreatmentWidget> createState() => _TreatmentWidgetState();
}

class _TreatmentWidgetState extends State<TreatmentWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Consumer<RegistrationController>(
      builder: (context, registrationController, child) {
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: registrationController.listCount,
                itemBuilder: (context, index) {
                  if (registrationController.femaleList.length <= index) {
                    registrationController.femaleList
                        .add(TextEditingController());
                  }
                  if (registrationController.maleList.length <= index) {
                    registrationController.maleList
                        .add(TextEditingController());
                  }

                  var treatmentName =
                      registrationController.treatmentListModel.treatments !=
                                  null &&
                              index <
                                  registrationController
                                      .treatmentListModel.treatments!.length
                          ? registrationController
                                  .treatmentListModel.treatments![index].name ??
                              ""
                          : "No Treatment Available";

                  if (treatmentName != "No Treatment Available") {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!registrationController.treatmentList.contains(
                          registrationController
                              .treatmentListModel.treatments![index].id)) {
                        registrationController.treatmentList.add(
                            registrationController
                                .treatmentListModel.treatments![index].id);
                      }
                    });
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: const Color(0xfff0f0f0),
                        height: 84,
                        width: width,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "${index + 1}. $treatmentName",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: AppColor.txtColorMain,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "poppinsRegular",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      registrationController
                                          .removeTreatment(index);
                                    },
                                    child: SvgPicture.asset(
                                        "assets/images/delete.svg"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:25,
                                  child: _buildGenderTextField(
                                    label: "Male",
                                    controller:
                                        registrationController.maleList[index],
                                  ),
                                ),
                                SizedBox(
                                  height:25,
                                  child: _buildGenderTextField(
                                    label: "Female",
                                    controller:
                                        registrationController.femaleList[index],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Material(
                borderRadius: BorderRadius.circular(15.0),
                elevation: 5.0,
                child: InkWell(
                  onTap: () {
                    registrationController.listCount++;
                    registrationController.notifyListeners();
                    registrationController.finalList.clear();

                    for (var v = 0; v < registrationController.listCount; v++) {
                      var maleText =
                          registrationController.maleList[v].text.trim();
                      var femaleText =
                          registrationController.femaleList[v].text.trim();
                      if (maleText.isNotEmpty && femaleText.isNotEmpty) {
                        registrationController.finalList.add({
                          'male': maleText,
                          'female': femaleText,
                        });
                      }
                    }

                    registrationController.finalMaleList =
                        registrationController.finalList
                            .map((entry) => entry['male'] as String)
                            .toList();
                    registrationController.finalFemaleList =
                        registrationController.finalList
                            .map((entry) => entry['female'] as String)
                            .toList();
                    registrationController.notifyListeners();
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
                      '+ Add Treatments',
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
    );
  }

  Widget _buildGenderTextField({
    required String label,
    required TextEditingController controller,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 9),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff006837),
              fontWeight: FontWeight.w400,
              fontFamily: "poppinsRegular",
            ),
          ),
        ),
        SizedBox(
          height: 44,
          width: 26,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: const Color(0xfff5f5f5),
              hintStyle: const TextStyle(
                fontSize: 9,
                overflow: TextOverflow.ellipsis,
                fontFamily: "poppinsRegular",
                color: Colors.black,
              ),
              contentPadding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Color(0xffd9d9d9)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Color(0xffd9d9d9)),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Color(0xffd9d9d9)),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffd9d9d9)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
