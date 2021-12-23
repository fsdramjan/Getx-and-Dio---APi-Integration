import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/configs/appConfig.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class UserController extends GetxController {
  final _dio = Dio();
  final page = RxInt(1);
  final user = RxList<User>();

  getAllUserData(BuildContext context) async {
    try {
      if (user.isEmpty) {
        final response =
            await _dio.get('$baseUrl/users?per_page=3&page=${page.value}');

        final List<User> userData = response.data['data']
            .map((json) => User.fromJson(json))
            .toList()
            .cast<User>();
        if (response.statusCode == 200) {
          user.addAll(userData);
        }
      }
    } catch (e) {
      print(e);
      final snackbar = SnackBar(
        backgroundColor: Colors.red,
        content: KText(
          text: e.toString(),
          color: Colors.white,
          maxLines: 5,
        ),
      );
      return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  loadMoreUserData(BuildContext context) async {
    try {
      page.value++;
      final response =
          await _dio.get('$baseUrl/users?per_page=3&page=${page.value}');

      final List<User> userData = response.data['data']
          .map((json) => User.fromJson(json))
          .toList()
          .cast<User>();
      if (userData.length > 0) {
        user.addAll(userData);
      } else {
        Get.defaultDialog(
            title: 'Nothing',
            content: KText(
              text: 'There is no data',
              color: black,
            ));
      }
    } catch (e) {
      print(e);
      final snackbar = SnackBar(
        backgroundColor: Colors.red,
        content: KText(
          text: e.toString(),
          color: Colors.white,
          maxLines: 5,
        ),
      );
      return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
