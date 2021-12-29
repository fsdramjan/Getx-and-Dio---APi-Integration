import 'package:flutter/material.dart';
import 'package:restapi_test/src/configs/appColors.dart';

Widget kTextFormField({
  required final String hintText,
 required final bool obscureText,
  // required final String errorText,
  required final Color color,
  required final void Function(String)? onChanged,
  required final String? Function(String?) validator,
}) {
  return TextFormField(
    onChanged: onChanged,
    validator: validator,
    obscureText: obscureText,
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
