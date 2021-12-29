import 'package:get/get.dart';
import 'package:restapi_test/src/controllers/login_signup_controller.dart';
import 'package:restapi_test/src/controllers/resourceController.dart';
import 'package:restapi_test/src/controllers/userController.dart';

class BaseController {
  final userListC = Get.put(UserController());
  final resourceListC = Get.put(ResourceController());
  final loginSignUpC = Get.put(LoginSignUpController());
}
