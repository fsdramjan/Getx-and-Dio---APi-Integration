import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/pages/loginPage.dart';
import 'package:restapi_test/src/pages/searchPage.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: blueGrey,
        title: KText(
          text: 'Profile Page',
          fontSize: 18,
          color: white,
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(SearchUserPage()),
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: InkWell(
        onTap: () => Get.to(LoginPage()),
        child: Center(
          child: Container(
            width: Get.width / 2,
            decoration: BoxDecoration(
              color: blueGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    color: white,
                  ),
                  KText(text: ' Logout'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
