import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        child: Consumer<LoginController>(
          builder: (context, _loginController, child) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 217,
                    width: width,
                    child: Stack(
                      children: [
                        _backgroundOverlay(),
                        _backgroundImage(),
                        Center(child: _appLogo()),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      "Login or register to book \nyour appointments",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColor.txtColorMain,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppinsSemiBold",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.txtColorMain,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppinsRegular",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  _customTextField(
                    labelTxt: "Enter email",
                    hintTxt: "Enter email",
                    controller: _loginController.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.txtColorMain,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppinsRegular",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  _customTextField(
                    labelTxt: "Enter Password",
                    hintTxt: "Enter password",
                    controller: _loginController.password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _loginController.passwordVisible,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _loginController.passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: _loginController.updateVisibility,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      elevation: 5.0,
                      child: InkWell(
                        onTap: () {
                          if (_loginController.email.text.isEmpty) {
                            _loginController.showToastMsg("Enter email");
                          } else if (_loginController.password.text.isEmpty) {
                            _loginController.showToastMsg("Enter password");
                          } else {
                            _loginController.loginUser(
                              username: _loginController.email.text.trim(),
                              password: _loginController.password.text.trim(), context: context,
                            );
                          }
                        },
                        child: Container(
                          height: 45,
                          width: width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:AppColor.btnColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: _loginController.loading
                              ? Center(
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: const CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Text(
                                  'Login',
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
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "By creating or logging into an account you are agreeing with our ",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsRegular",
                          ),
                          children: [
                            TextSpan(
                              text: "Terms and Conditions",
                              style: TextStyle(color: Color(0xff0028fc)),
                            ),
                            TextSpan(
                              text: " and ",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsRegular",
                              ),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(color: Color(0xff0028fc)),
                            ),
                            TextSpan(
                              text: ".",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsRegular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

              
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Image.asset(
      height: 217,
      AssetsPathes.loginFrame,
      fit: BoxFit.cover,
    );
  }

  Widget _appLogo() {
    return Image.asset(
      height: 84,
      width: 80,
      AssetsPathes.appLogo,
      fit: BoxFit.cover,
    );
  }

  Widget _backgroundOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      width: double.infinity,
      height: double.infinity,
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
