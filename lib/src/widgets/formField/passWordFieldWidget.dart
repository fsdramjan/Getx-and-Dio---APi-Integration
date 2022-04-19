import 'package:flutter/material.dart';
import '../../configs/appColors.dart';
import '../../configs/appUtils.dart';

class PasswordFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  PasswordFormFieldWidget({
    required this.controller,
    required this.hintText,
  });

  @override
  State<PasswordFormFieldWidget> createState() =>
      _PasswordFormFieldWidgetState();
}

class _PasswordFormFieldWidgetState extends State<PasswordFormFieldWidget> {
  bool? isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(
          color: white54,
          fontWeight: FontWeight.w600,
        ),
        obscureText: isShowPassword == false ? true : false,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: transparent),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: transparent)),

          border: InputBorder.none,

          hintText: widget.hintText,

          hintStyle: TextStyle(
            color: white24,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              isShowPassword == true
                  ? setState(() {
                      isShowPassword = false;
                    })
                  : setState(() {
                      isShowPassword = true;
                    });

              print(isShowPassword);
            },
            icon: Icon(
              isShowPassword != true
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              size: 20,
              color: orangePrimary,
            ),
          ),
          contentPadding: paddingH20,

          fillColor: formFieldFillColor,
          //
          filled: true,
        ),
      ),
    );
  }
}
