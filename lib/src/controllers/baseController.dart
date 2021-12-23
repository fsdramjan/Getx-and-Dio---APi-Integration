import 'package:get/get.dart';
import 'package:restapi_test/src/controllers/resourceController.dart';
import 'package:restapi_test/src/controllers/userController.dart';

class BaseController {
  final userListC = Get.put(UserController());
  final resourceListC = Get.put(ResourceController());
}
