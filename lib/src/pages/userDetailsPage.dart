import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/pages/updateUserData.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class UserDetailsPage extends StatelessWidget with BaseController {
  final int id;
  final User users;

  UserDetailsPage({
    required this.id,
    required this.users,
  });
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            KText(
              text: users.first_name,
              fontSize: 18,
            ),
            KText(
              text: users.last_name,
              fontSize: 18,
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () => Get.to(UpdateUserDataPage(
              id: users.id,
              users: users,
            )),
            icon: Icon(
              Icons.edit,
              color: white,
              size: 15,
            ),
            label: KText(
              text: 'Edit',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: padding10,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.network(
                    users.avatar,
                    fit: BoxFit.cover,
                  )),
            ),
            ListTile(
              leading: KText(
                text: 'name:',
                color: black54,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(
                    text: users.first_name,
                    fontSize: 18,
                    color: black,
                  ),
                  KText(
                    text: users.last_name,
                    fontSize: 18,
                    color: black,
                  ),
                ],
              ),
              // trailing: IconButton(
              //   onPressed: () => Get.to(UpdateUserDataPage()),
              //   icon: Icon(
              //     Icons.edit,
              //     size: 15,
              //   ),
              // ),
            ),
            ListTile(
              leading: KText(
                text: 'email',
                fontSize: 14,
                color: black54,
              ),
              title: KText(
                text: users.email,
                fontSize: 18,
                color: black,
              ),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.edit,
              //     size: 15,
              //   ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
