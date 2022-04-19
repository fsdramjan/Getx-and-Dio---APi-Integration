import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configs/appUtils.dart';
import '../textWidget/kText.dart';

customGradientButton({
  List<Color>? gradientColor,
  required String title,
  required void Function() onTap,
  double? height,
  double? width,
  double? textSize,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height != null ? height : 50,
      width: width != null ? width : Get.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: borderRadiusC30,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: gradientColor != null
              ? gradientColor
              : [
                  Color(0xffFFA710),
                  Color(0xffFFE3B2),
                ],
        ),
      ),
      child: KText(
        text: title,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
        fontSize: textSize != null ? textSize : 17,
      ),
    ),
  );
}
