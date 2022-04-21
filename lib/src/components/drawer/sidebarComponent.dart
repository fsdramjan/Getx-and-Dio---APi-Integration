import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/configs/appUtils.dart';
import 'package:wellness_republic/src/widgets/textWidget/kText.dart';
import '../../configs/appColors.dart';
import '../../configs/appConfigs.dart';

class SidebarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                // alignment: Alignment.,
                children: [
                  Opacity(
                    opacity: .15,
                    child: Image.network(
                      loginImage,
                      height: Get.height,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      height: 130,
                      width: Get.width,
                      color: black,
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 40,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FlutterLogo(
                            size: 70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 40,
                    child: KText(
                      text: 'saif mahmud',
                      fontWeight: FontWeight.w600,
                      color: white,
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 70,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: borderRadiusC5,
                            border: Border.all(
                              color: white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.call,
                              color: white,
                              size: 15,
                            ),
                          ),
                        ),
                        sizeW10,
                        KText(
                          text: '+8801910583753',
                          fontSize: 14,
                          color: orangePrimary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  Row(
                    
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: borderRadiusC5,
                          border: Border.all(
                            color: redAccent,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.call,
                            color: white,
                            size: 15,
                          ),
                        ),
                      ),
                      sizeW10,
                      KText(
                        text: '+8801910583753',
                        fontSize: 14,
                        color: orangePrimary,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
