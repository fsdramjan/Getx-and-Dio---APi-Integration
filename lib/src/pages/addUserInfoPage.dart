import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class AddUserDataPage extends StatefulWidget {
  @override
  State<AddUserDataPage> createState() => _AddUserDataPageState();
}

class _AddUserDataPageState extends State<AddUserDataPage> with BaseController {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'Add User Info',
          fontSize: 18,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: padding10,
          child: Expanded(
            child: ListView(
              children: [
                sizeBox10,
                kTextFormField(
                  onChanged: userListC.email,
                  validator: (value) {
                    if (value == null || userListC.email.value.isEmpty) {
                      return 'Please enter email';
                    }
                    return '';
                  },
                  color: blueGrey,
                  hintText: 'email',
                ),
                sizeBox10,
                kTextFormField(
                  onChanged: userListC.firstName,
                  validator: (value) {
                    if (value == null || userListC.firstName.value.isEmpty) {
                      return 'Please enter first name';
                    }
                    return '';
                  },
                  color: blueGrey,
                  hintText: 'first name',
                ),
                sizeBox10,
                kTextFormField(
                  onChanged: userListC.lastName,
                  validator: (value) {
                    if (value == null || userListC.lastName.value.isEmpty) {
                      return 'Please enter last name';
                    }
                    return '';
                  },
                  color: blueGrey,
                  hintText: 'last name',
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate() ||
                        userListC.user.isNotEmpty ||
                        userListC.email.value.isNotEmpty ||
                        userListC.firstName.value.isNotEmpty ||
                        userListC.lastName.value.isNotEmpty) {
                      userListC.addNewUserData();
                    } else {
                      Get.snackbar('title', 'message');
                    }
                  },
                  child: Container(
                    height: 40,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: blueGrey,
                    ),
                    child: KText(
                      text: 'Add',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget kTextFormField({
    required final String hintText,
    // required final String errorText,
    required final Color color,
    required final void Function(String)? onChanged,
    required final String? Function(String?) validator,
  }) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: red),
        ),
        // errorText: errorText,
        hintText: hintText,
      ),
    );
  }
}
