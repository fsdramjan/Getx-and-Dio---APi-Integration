import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appConfig.dart';
import 'package:restapi_test/src/models/resource.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class ResourceController extends GetxController {
  final _dio = Dio();
  final resource = RxList<Resource>();
  getResourceListData(BuildContext context) async {
    try {
      final response = await _dio.get('$baseUrl/unknown');

      final List<Resource> resourceData = response.data['data']
          .map((json) => Resource.fromJson(json))
          .toList()
          .cast<Resource>();

      resource.addAll(resourceData);
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
