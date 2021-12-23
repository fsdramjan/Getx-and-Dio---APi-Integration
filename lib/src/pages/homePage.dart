import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/pages/userDetailsPage.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class HomePage extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    userListC.getAllUserData(context);
    resourceListC.getResourceListData(context);

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: blueGrey,
        // centerTitle: true,
        title: KText(
          text: 'RestApi Getx and Dio',
          fontSize: 18,
          color: white,
        ),
      ),
      body: Obx(
        () => ListView(
          children: [
            sizeBox20,
            Container(
              height: 85,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                itemCount: resourceListC.resource.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final resourceList = resourceListC.resource[index];
                  print(resourceList.id);
                  return Padding(
                    padding: padding10,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              HexColor(resourceList.color as String),
                          radius: 30,
                          child: KText(text: '${resourceList.year}'),
                        ),
                        SizedBox(height: 5),
                        KText(
                          text: resourceList.name as String,
                          color: black,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            sizeBox10,
            ListView.builder(
              physics: BouncingScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemCount: userListC.user.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final userList = userListC.user[index];

                return GestureDetector(
                  onTap: () => Get.to(UserDetailsPage(
                    id: userList.id as int,
                    users: userList,
                  )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: userListC.user.isEmpty
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(
                            // height: 200,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: blueGrey,
                              // color: HexColor('${item['color']}'),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: userList.id != null
                                ? Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: userList.avatar != null
                                              ? Image.network(
                                                  userList.avatar as String,
                                                  fit: BoxFit.fitHeight,
                                                )
                                              : Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                KText(
                                                  text: userList.first_name
                                                      as String,
                                                  color: white,
                                                ),
                                                KText(
                                                  text: userList.last_name
                                                      as String,
                                                  color: white,
                                                ),
                                              ],
                                            ),
                                            KText(
                                              text: userList.email as String,
                                              color: white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                          ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userListC.loadMoreUserData(context);
        },
        child: Icon(
          Icons.restore,
        ),
      ),
    );
  }
}
