// import 'package:flutter/material.dart';
// import 'package:restapi_test/src/configs/appColors.dart';
// import 'package:restapi_test/src/controllers/baseController.dart';
// import 'package:restapi_test/src/widgets/kText.dart';

// class UpdateUserDataPage extends StatefulWidget {

//   @override
//   State<UpdateUserDataPage> createState() => _UpdateUserDataPageState();
// }

// class _UpdateUserDataPageState extends State<UpdateUserDataPage> with BaseController {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: KText(
//           text: 'Add User Info',
//           fontSize: 18,
//         ),
//       ),
//       body: Padding(
//         padding: padding10,
//         child: ListView(
//           children: [
//             sizeBox10,
//             SizedBox(
//               height: 45,
//               child: TextFormField(

//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: red),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: red),
//                   ),
//                   hintText: 'name', 
//                 ),
//               ),
//             ),
//             sizeBox10,
//             SizedBox(
//               height: 45,
//               child: TextFormField(

//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: red),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: red),
//                   ),
//                   hintText: 'job',
//                 ),
//               ),
//             ),
//             sizeBox10,
//             ElevatedButton(
//               onPressed: () {},
//               child: KText(
//                 text: 'Add',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
