import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/configs/appUtils.dart';
import 'package:wellness_republic/src/pages/loginSignup/registerAsCustomerPage.dart';
import 'package:wellness_republic/src/widgets/containerButton/customGradientButton.dart';
import 'package:wellness_republic/src/widgets/formField/passWordFieldWidget.dart';
import 'package:wellness_republic/src/widgets/formField/phoneFormFieldWidget.dart';
import 'package:wellness_republic/src/widgets/textWidget/kText.dart';

import '../../configs/appColors.dart';
import '../../configs/appConfigs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phoneTextC = TextEditingController();

  final passwordTextC = TextEditingController();

  var isFieldEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _loginImage(),
            sizeH30,
            Padding(
              padding: paddingH10,
              child: Column(
                children: [
                  KText(
                    text: 'Welcome back',
                    color: orangePrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  sizeH5,
                  KText(
                    text: 'STYLE THAT FIT YOUR LIFESTYLE',
                    fontSize: 10,
                    color: GREY_3,
                  ),
                  sizeH20,
                  CustomPhoneFormFieldWidget(
                    controller: phoneTextC,
                  ),
                  sizeH30,
                  PasswordFormFieldWidget(
                    controller: passwordTextC,
                    hintText: 'Password',
                  ),
                  sizeH30,
                  customGradientButton(
                    onTap: () {
                      if (phoneTextC.text.isEmpty ||
                          passwordTextC.text.isEmpty) {
                        Get.snackbar(
                          'Opps!',
                          'Field Empty',
                          backgroundColor: redAccent,
                          colorText: white,
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    title: 'Login',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: KText(
                      text: 'Forget your password ?',
                      color: white54,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      KText(
                        text: '''Don't have an account?''',
                        color: white24,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      TextButton(
                        onPressed: () => Get.to(RegisterAsCustomerPage()),
                        child: KText(
                          text: 'Sign up',
                          color: orangePrimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loginImage() => Stack(
        children: [
          Image.network(
            loginImage,
            height: 280,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60,
            left: -10,
            child: Container(
              height: 40,
              width: 50,
              color: black26,
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
        ],
      );
}
