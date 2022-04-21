import 'package:flutter/material.dart';
import 'package:wellness_republic/src/components/drawer/sidebarComponent.dart';

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
          icon: Icon(
            Icons.format_align_left,
          ),
        ),
      ),
    );
  }
}
