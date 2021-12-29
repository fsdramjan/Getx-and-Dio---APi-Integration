import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/pages/userDetailsPage.dart';

class SearchUserPage extends StatelessWidget with BaseController {
  final user = RxList<User>();

  @override
  Widget build(BuildContext context) {
    userListC.getAllUserData(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(onTap: () {}, child: searchBar(context)),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: userListC.user.length,
          itemBuilder: (context, index) {
            final user = userListC.user[index];
            return Column(
              children: [
                ListTile(
                  onTap: () => Get.to(
                    UserDetailsPage(
                      id: user.id,
                      users: user,
                    ),
                  ),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(user.avatar)),
                  title: Text('${user.first_name} ${user.last_name}'),
                  subtitle: Text(user.email),
                  trailing: Text('ID: ${user.id}'),
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        // readOnly: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: 'Search users',
          prefixIcon: Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

//search package
//  showSearch(
//         context: context,
//         delegate: SearchPage<User>(
//           onQueryUpdate: (s) => print(s),
//           items: user,
//           searchLabel: 'Search users',
//           suggestion: Center(
//             child: Text('Filter user by id, name or email'),
//           ),
//           failure: Center(
//             child: Text('No user found :('),
//           ),
//           filter: (user) => [
//             // '${user.id}',
//             user.first_name,
//             user.last_name,
//           ],
//           builder: (user) => ListTile(
//             title: Text(
//               user.first_name,
//             ),
//             subtitle: Text(
//               user.last_name,
//             ),
//             // trailing: Text(
//             //   '${user.id}',
//             // ),
//           ),
//         ),
//       ),


