import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/pages/loginSignup/loginPage.dart';

import 'configs/appTheme.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      smartManagement: SmartManagement.onlyBuilder,
      home: LoginPage(),
    );
  }
}