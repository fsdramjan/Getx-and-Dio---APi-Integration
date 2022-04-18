import 'package:flutter/material.dart';
import '../../configs/appColors.dart';
import '../../configs/appUtils.dart';

class CustomPasswordFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  CustomPasswordFormFieldWidget({
    required this.controller,
  });

  @override
  State<CustomPasswordFormFieldWidget> createState() =>
      _CustomPasswordFormFieldWidgetState();
}

class _CustomPasswordFormFieldWidgetState
    extends State<CustomPasswordFormFieldWidget> {
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

          hintText: 'Password',

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
              isShowPassword == true
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
