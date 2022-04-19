import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/configs/appColors.dart';
import 'package:wellness_republic/src/configs/appConfigs.dart';
import 'package:wellness_republic/src/configs/appUtils.dart';
import 'package:wellness_republic/src/pages/loginSignup/registerAsCustomerPage.dart';
import 'package:wellness_republic/src/pages/loginSignup/registerAsProviderPage.dart';
import 'package:wellness_republic/src/widgets/textWidget/kText.dart';

class ChooseRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.network(
                    loginImage,
                    height: Get.height,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: Get.height,
                        width: Get.width,
                        color: Colors.black26,
                        child: Center(
                          child: Padding(
                            padding: paddingH20,
                            child: KText(
                              text:
                                  'Make money tru referral link, sign-up now !!!',
                              fontSize: 25,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                              color: orangePrimary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () => Get.to(RegisterAsCustomerPage()),
                    child: Padding(
                      padding: paddingH20,
                      child: Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: Container(
                          height: 50,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: borderRadiusC30,
                            border: Border.all(
                              color: orangePrimary,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: 'As customer',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () => Get.to(RegisterAsProviderPage()),
                    child: Padding(
                      padding: paddingH20,
                      child: Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Container(
                          height: 50,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: borderRadiusC30,
                            border: Border.all(
                              color: orangePrimary,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: KText(
                            text: 'As provider',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
