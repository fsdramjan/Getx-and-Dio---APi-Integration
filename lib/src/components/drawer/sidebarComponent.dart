import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wellness_republic/src/configs/appConfigs.dart';
import 'package:wellness_republic/src/configs/appUtils.dart';
import 'package:wellness_republic/src/widgets/textWidget/kText.dart';

import '../../configs/appColors.dart';

class SidebarComponent extends StatefulWidget {
  @override
  _SidebarComponentState createState() => _SidebarComponentState();
}

class _SidebarComponentState extends State<SidebarComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 200,
                  color: Colors.black,
                  child: Container(
                    height: 130,
                    width: Get.width,
                    color: black,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
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
                        sizeW10,
                        SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sizeH30,
                              KText(
                                text: 'saif mahmud',
                                fontWeight: FontWeight.w600,
                                color: white,
                              ),
                              sizeH10,
                              Row(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: .15,
                        child: Image.network(
                          loginImage,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: Get.height / 1.5,
                          child: ListView(
                            children: [
                              MenuItem(
                                title: 'Switch to provider',
                                onPressed: () {},
                                child: CupertinoSwitch(
                                    activeColor: Theme.of(context).primaryColor,
                                    value: true,
                                    onChanged: (value) => setState(() {
                                          value = false;
                                        })),
                              ),
                              MenuItem(
                                title: 'Home',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_categories.svg'),
                              ),
                              MenuItem(
                                title: 'My Profile',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_categories.svg'),
                              ),
                              MenuItem(
                                title: 'My Wallet',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Share my referral link',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Referral history',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Booking',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'My favorite providers',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'My photos',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_categories.svg'),
                              ),
                              MenuItem(
                                title: 'Make an appointment',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'My addresses',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Supports',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Buy & sell',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Language',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'FAQ',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Terms & conditions',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'ABOUT US',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'CONTACT US',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/all_coupon.svg'),
                              ),
                              MenuItem(
                                title: 'Sign out',
                                onPressed: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/signout.svg'),
                              ),
                              MenuItem(
                                title: 'Switch to service',
                                onPressed: () {},
                                child: CupertinoSwitch(
                                    activeColor: Theme.of(context).primaryColor,
                                    value: true,
                                    onChanged: (value) => setState(() {
                                          value = false;
                                        })),
                              ),
                              MenuItem(
                                title: 'Dark Theme',
                                onPressed: () {},
                                child: CupertinoSwitch(
                                    activeColor: Theme.of(context).primaryColor,
                                    value: false,
                                    onChanged: (value) => setState(() {
                                          value = false;
                                        })),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: Get.width,
                  color: redAccent,
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Function onPressed;
  final Widget child;
  final int pendingBookings;

  MenuItem({
    required this.title,
    this.icon,
    required this.onPressed,
    required this.child,
    this.pendingBookings = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Row(
          children: [
            child,
            SizedBox(
              width: 16,
            ),
            Flexible(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
            ),
            if (pendingBookings != 0)
              Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.all(5),
                child: Text(
                  "$pendingBookings",
                ),
              )
          ],
        ),
      ),
    );
  }
}
