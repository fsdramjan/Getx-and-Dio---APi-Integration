import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/pages/signUpPage.dart';
import 'package:restapi_test/src/widgets/kText.dart';
import 'package:restapi_test/src/widgets/kTextFormField.dart';

class LoginPage extends StatelessWidget with BaseController {
  final _formKey = GlobalKey<FormState>();

  final bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: padding10,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                KText(
                  text: 'Login',
                  fontSize: 40,
                  color: blueGrey,
                  fontFamily: medium,
                ),
                SizedBox(height: 50),
                kTextFormField(
                  obscureText: false,
                  hintText: 'Email',
                  color: blueGrey,
                  onChanged: loginSignUpC.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    return '';
                  },
                ),
                sizeBox20,
                TextFormField(
                  onChanged: loginSignUpC.password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return '';
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blueGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blueGrey),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: red),
                    ),
                    // errorText: errorText,
                    hintText: 'password',

                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
                sizeBox20,
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate() ||
                        loginSignUpC.email.value.isNotEmpty ||
                        loginSignUpC.password.value.isNotEmpty) {
                      loginSignUpC.login(context);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: blueGrey,
                    ),
                    child: KText(
                      text: 'Login',
                      fontFamily: medium,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                KText(
                  text: 'or create a new account',
                  fontSize: 12,
                  color: blueGrey,
                  fontFamily: regular,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(SignUpPage()),
                  child: Container(
                    height: 40,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: blueGrey,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: KText(
                        text: 'Sign Up',
                        fontFamily: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
