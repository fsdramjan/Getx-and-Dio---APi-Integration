import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/configs/appConfig.dart';
import 'package:restapi_test/src/pages/bottomBarHome.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class LoginSignUpController extends GetxController {
  final _dio = Dio();
//
  final email = RxString('');
  final password = RxString('');
  login(BuildContext context) async {
    try {
      final res = await _dio.post('$baseUrl/login', data: {
        'email': email.value,
        'password': password.value,
      });
      if (res.statusCode == 200) {
        Get.snackbar(
          'Success',
          'Login Success  ${res.data}',
          backgroundColor: blueGrey,
          colorText: white,
        );

        print(res.data);
        print('User login success');
        Get.to(BottomBarHome());

        return res.data;
      } else {
        Get.snackbar('Failed', 'Failed to login');
      }
    } catch (e) {
      print(e.toString());
      final snackbar = SnackBar(
        backgroundColor: Colors.red,
        content: KText(
          text: 'Please give correct email and password',
          color: Colors.white,
          maxLines: 5,
        ),
      );
      return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  register(BuildContext context) async {
    try {
      final res = await _dio.post('$baseUrl/register', data: {
        'email': email.value,
        'password': password.value,
      });

      if (res.statusCode == 200) {
        Get.snackbar(
          'Success',
          'Registration Success ${res.data}',
          backgroundColor: blueGrey,
          colorText: white,
        );

        print(res.data);
        print('User Registration success ');
        Get.to(BottomBarHome());

        return res.data;
      } else {
        Get.snackbar('Failed', 'Failed to Registration');
      }
    } catch (e) {
      print(e.toString());
      final snackbar = SnackBar(
        backgroundColor: Colors.red,
        content: KText(
          text: 'Please give correct email and password',
          color: Colors.white,
          maxLines: 5,
        ),
      );
      return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
