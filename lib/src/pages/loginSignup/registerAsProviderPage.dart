import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/configs/appUtils.dart';
import 'package:wellness_republic/src/widgets/containerButton/customGradientButton.dart';
import 'package:wellness_republic/src/widgets/formField/customFormField.dart';
import 'package:wellness_republic/src/widgets/formField/phoneFormFieldWidget.dart';
import 'package:wellness_republic/src/widgets/textWidget/kText.dart';

import '../../configs/appColors.dart';
import '../../widgets/formField/passWordFieldWidget.dart';
import 'loginPage.dart';

class RegisterAsProviderPage extends StatefulWidget {
  @override
  State<RegisterAsProviderPage> createState() => _RegisterAsProviderPageState();
}

class _RegisterAsProviderPageState extends State<RegisterAsProviderPage> {
  final phoneTextC = TextEditingController();

  final passwordTextC = TextEditingController();

  final confirmPasswordTextC = TextEditingController();

  var isTermsAndConditionCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          sizeH20,
          GestureDetector(
            onTap: () => Get.back(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 50,
                width: 50,
                color: black26,
                child: Icon(
                  Icons.arrow_back,
                  color: orangePrimary.withOpacity(.8),
                ),
              ),
            ),
          ),
          Center(
            child: KText(
              text: 'Create an Account',
              color: orangePrimary,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          sizeH30,
          Padding(
            padding: paddingH10,
            child: Column(
              children: [
                CustomFormFieldWidget(
                  hintText: 'Full Name',
                  icons: Icons.person,
                ),
                sizeH20,
                CustomPhoneFormFieldWidget(controller: phoneTextC),
                sizeH20,
                CustomFormFieldWidget(
                  hintText: 'Email',
                  icons: Icons.email,
                ),
                sizeH20,
                PasswordFormFieldWidget(
                  controller: passwordTextC,
                  hintText: 'Password',
                ),
                sizeH20,
                PasswordFormFieldWidget(
                  controller: confirmPasswordTextC,
                  hintText: 'Confirm Password',
                ),
                sizeH30,
                Padding(
                  padding: paddingH10,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          isTermsAndConditionCheck == true
                              ? setState(() {
                                  isTermsAndConditionCheck = false;
                                })
                              : setState(() {
                                  isTermsAndConditionCheck = true;
                                });
                        },
                        child: isTermsAndConditionCheck == true
                            ? Icon(
                                Icons.check_box,
                                size: 26,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 26,
                              ),
                      ),
                      sizeW10,
                      KText(
                        text: 'Terms & conditions',
                        decoration: TextDecoration.underline,
                        color: orangePrimary50.withOpacity(.7),
                      ),
                    ],
                  ),
                ),
                sizeH30,
                customGradientButton(
                  title: 'Sign up',
                  textSize: 19,
                  onTap: () {},
                ),
                sizeH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'Already have an account ?',
                      color: white24,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    TextButton(
                      onPressed: () => Get.to(LoginPage()),
                      child: KText(
                        text: 'Sign in',
                        color: orangePrimary,
                        fontSize: 16,
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
    );
  }
}
