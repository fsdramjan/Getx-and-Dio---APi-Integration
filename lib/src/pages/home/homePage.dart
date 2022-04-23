// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wellness_republic/src/components/drawer/sidebarComponent.dart';
import 'package:wellness_republic/src/configs/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellness_republic/src/configs/appConfigs.dart';

class HomePage extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarComponent(),
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
          icon: SvgPicture.asset(
            "assets/icons/left_bar.svg",
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/located.svg",
                // color: white,
                height: 20,
              ),
              SizedBox(
                width: 7,
              ),
              Flexible(
                child:
                    Text("Pick your address", style: TextStyle(color: white54)),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/icons/Vector.svg",
                height: 18,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60),
            ),
            child: Image.network(
              loginImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Positioned(bottom: 50, child: _headerContent(context))
      ],
    );
  }
}

Widget _headerContent(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Find book best services",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
            ),
          ],
        ),
      )
    ],
  );
}
