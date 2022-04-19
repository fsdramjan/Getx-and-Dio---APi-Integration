import 'package:flutter/material.dart';

import '../../configs/appColors.dart';
import '../../configs/appUtils.dart';
import '../textWidget/kText.dart';

class CustomPhoneFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  CustomPhoneFormFieldWidget({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
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
          prefixIcon: Container(
            width: 90,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  KText(
                    text: '+880 ',
                    fontSize: 15,
                    color: white54,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                    color: white38,
                  ),
                ],
              ),
            ),
          ),

          hintText: 'Phone Number',

          hintStyle: TextStyle(
            color: white24,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: Icon(
            Icons.phone,
            size: 20,
            color: orangePrimary,
          ),
          contentPadding: paddingH10,

          fillColor: formFieldFillColor,
          //
          filled: true,
        ),
      ),
    );
  }
}
