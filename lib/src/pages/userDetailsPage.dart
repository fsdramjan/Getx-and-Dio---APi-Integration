import 'package:flutter/material.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class UserDetailsPage extends StatelessWidget {
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
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 15,
                ),
              ),
            ),
            ListTile(
              leading: KText(
                text: 'email',
                fontSize: 14,
                color: black54,
              ),
              title: KText(
                text: '${users.email}',
                fontSize: 18,
                color: black,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
