import 'package:flutter/material.dart';
import '../../configs/appColors.dart';
import '../../configs/appUtils.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icons;

  CustomFormFieldWidget({
    required this.hintText,
    required this.icons,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        style: TextStyle(
          color: white54,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: transparent),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: transparent)),

          border: InputBorder.none,

          hintText: hintText,

          hintStyle: TextStyle(
            color: white24,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: Icon(
            icons,
            color: orangePrimary,
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
