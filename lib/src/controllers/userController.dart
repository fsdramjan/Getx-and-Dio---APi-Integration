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
  //per page data show number
  final perPage = RxInt(5);
  final user = RxList<User>();
  final isEmpty = RxBool(true);
  final isLoading = RxBool(false);

  final scrollController = ScrollController();

  //
  getAllUserData(BuildContext context) async {
    try {
      if (user.isEmpty) {
        final response = await _dio
            .get('$baseUrl/users?per_page=$perPage&page=${page.value}');

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

  void loadMoreUserData() async {
    try {
      if (isEmpty.value == true) {
        isLoading.value = true;
        page.value++;
        final response = await _dio
            .get('$baseUrl/users?per_page=$perPage&page=${page.value}');

        final List<User> userData = response.data['data']
            .map((json) => User.fromJson(json))
            .toList()
            .cast<User>();
        if (userData.length > 0) {
          user.addAll(userData);
          isLoading.value = false;
          scrollController.animateTo(
            scrollController.offset + 750,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        } else {
          Get.defaultDialog(
              title: 'Nothing',
              content: KText(
                text: 'There is no data',
                color: black,
              ));
          isLoading.value = false;
          isEmpty.value = false;
        }
      }
    } catch (e) {
      print(e);
      // final snackbar = SnackBar(
      //   backgroundColor: Colors.red,
      //   content: KText(
      //     text: e.toString(),
      //     color: Colors.white,
      //     maxLines: 5,
      //   ),
      // );
      // return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
