import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/pages/userDetailsPage.dart';
import 'package:search_page/search_page.dart';

class SearchUserPage extends StatelessWidget with BaseController {
  final user = RxList<User>();

  @override
  Widget build(BuildContext context) {
    userListC.getAllUserData(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('All User'),
      ),
      body: ListView.builder(
        itemCount: userListC.user.length,
        itemBuilder: (context, index) {
          final user = userListC.user[index];
          return ListTile(
            onTap: () => Get.to(
              UserDetailsPage(
                id: user.id,
                users: user,
              ),
            ),
            leading: Image.network(user.avatar),
            title: Text('${user.first_name} ${user.last_name}'),
            subtitle: Text(user.email),
            trailing: Text('${user.id}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search users',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<User>(
            onQueryUpdate: (s) => print(s),
            items: user,
            searchLabel: 'Search users',
            suggestion: Center(
              child: Text('Filter user by id, name or email'),
            ),
            failure: Center(
              child: Text('No user found :('),
            ),
            filter: (user) => [
              // '${user.id}',
              user.first_name,
              user.last_name,
            ],
            builder: (user) => ListTile(
              title: Text(
                user.first_name,
              ),
              subtitle: Text(
                user.last_name,
              ),
              // trailing: Text(
              //   '${user.id}',
              // ),
            ),
          ),
        ),
        child: Icon(Icons.search),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:restapi_test/src/configs/appColors.dart';

// class SearchPage extends StatelessWidget {
//   const SearchPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 20,
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: SizedBox(
//                 height: 50,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: blueGrey,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: blueGrey,
//                       ),
//                     ),
//                     hintText: 'Search user',
//                   ),
//                 ),
//               ),
//             ),
            
//             SizedBox(width: 10),
//             Container(
//               decoration: BoxDecoration(
//                 color: blueGrey,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(4),
//                 child: Icon(
//                   Icons.filter_alt,
//                   size: 30,
//                   color: white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
  
// }
