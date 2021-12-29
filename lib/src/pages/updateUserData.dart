import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/models/users.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class UpdateUserDataPage extends StatefulWidget {
  final int id;
  final User users;

  UpdateUserDataPage({
    required this.id,
    required this.users,
  });
  //
  @override
  State<UpdateUserDataPage> createState() => _UpdateUserDataPageState();
}

class _UpdateUserDataPageState extends State<UpdateUserDataPage>
    with BaseController {
  //

  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  void initState() {
    emailController.text = widget.users.email;
    firstNameController.text = widget.users.first_name;
    lastNameController.text = widget.users.last_name;
    super.initState();
  }

  //
  final _formKey = GlobalKey<FormState>();

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'Update User Info',
          fontSize: 18,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: padding10,
          child: ListView(
            children: [
              SizedBox(height: 100),
              kTextFormField(
                controller: emailController,
                onChanged: userListC.email,
                validator: (value) {
                  if (value == null) {
                    return 'Please enter email';
                  }
                  return '';
                },
                color: blueGrey,
               
                hintText: 'email',
              ),
              sizeBox10,
              kTextFormField(
                controller: firstNameController,
                onChanged: userListC.firstName,
                validator: (value) {
                  if (value == null) {
                    return 'Please enter  first name';
                  }
                  return '';
                },
                
                color: blueGrey,
                hintText: ' first name',
              ),
              sizeBox10,
              kTextFormField(
                controller: lastNameController,
                onChanged: userListC.lastName,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter  last name';
                  }
                  return '';
                },
                color: blueGrey,
              
                hintText: ' last name',
              ),
              sizeBox10,
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate() ||
                      userListC.email.isNotEmpty ||
                      userListC.firstName.isNotEmpty ||
                      userListC.lastName.isNotEmpty) {
                    print(widget.id);
                    userListC.updateUserData(id: widget.id);
                  }
                },
                child: Container(
                  height: 45,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueGrey,
                  ),
                  child: Center(
                    child: KText(
                      text: 'Add',
                      fontFamily: medium,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget kTextFormField({
    required final String hintText,
    // required final String errorText,
    required final Color color,
    required final TextEditingController controller,
    required final void Function(String)? onChanged,
    required final String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
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
