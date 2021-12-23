import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appTheme.dart';

import 'package:restapi_test/src/controllers/userController.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class HomePage extends StatelessWidget {
  final _ = Get.put(UserController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    _.getUserData();
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: blueGrey,
        // centerTitle: true,
        title: KText(
          text: 'RestApi Getx and Dio',
          fontSize: 18,
          color: white,
        ),
      ),
      body: ListView(
        children: [
          sizeBox20,
          Container(
            height: 85,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: padding10,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: blueGrey,
                        radius: 30,
                      ),
                      SizedBox(height: 5),
                      KText(
                        text: 'User $index',
                        fontSize: 12,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          sizeBox10,
          ListView.builder(
            physics: BouncingScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: _.user.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final item = _.user[index];
              print(item);
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Container(
                      height: 200,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: KText(text: 'text'),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
