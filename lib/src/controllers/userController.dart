import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appConfig.dart';

class UserController extends GetxController {
  final _dio = Dio();

  final user = RxList();
  // final user = RxList<User>();

  getUserData() async {
    try {
      final response = await _dio.get('$baseUrl/User');
      print(response.data['data']);
      user.addAll(response.data);
      // final List<User> userData = response.data
      //     .map((json) => User.fromJson(json))
      //     .toList()
      //     .cast<User>();
      // user.addAll(userData);
      // print(userData);
    } catch (e) {
      print(e);
    }
  }
}
