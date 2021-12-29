
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_test/src/configs/appColors.dart';
import 'package:restapi_test/src/controllers/baseController.dart';
import 'package:restapi_test/src/pages/searchPage.dart';
import 'package:restapi_test/src/pages/updateUserData.dart';
import 'package:restapi_test/src/pages/userDetailsPage.dart';
import 'package:restapi_test/src/widgets/kText.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with BaseController {
  void initState() {
    super.initState();
    userListC.scrollController.addListener(() {
      if (userListC.scrollController.position.atEdge) {
        if (userListC.scrollController.position.pixels == 0) {
        } else {
          userListC.loadMoreUserData();
          print('Bottom');
          print(userListC.page.value);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    userListC.getAllUserData(context);
    resourceListC.getResourceListData(context);

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: blueGrey,
        title: KText(
          text: 'Home Page',
          fontSize: 18,
          color: white,
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(SearchUserPage()),
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: Obx(
        () => userListC.user.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                  controller: userListC.scrollController,
                  physics: BouncingScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: userListC.user.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    final userList = userListC.user[index];

                    return GestureDetector(
                      onTap: () => Get.to(UserDetailsPage(
                        id: userList.id,
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
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            userList.avatar,
                                            scale: 1,
                                          )),
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
                                                text: userList.first_name,
                                                color: white,
                                                fontSize: 18,
                                              ),
                                              KText(
                                                text: userList.last_name,
                                                color: white,
                                                fontSize: 18,
                                              ),
                                            ],
                                          ),
                                          KText(
                                            text: userList.email,
                                            color: white,
                                            fontSize: 12,
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              userListC.deleteSingleUserData(
                                                context,
                                                id: userList.id,
                                              );
                                            },
                                            icon: Align(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.delete,
                                                size: 25,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Get.to(UpdateUserDataPage(
                                                  id: userList.id,
                                                  users: userList));
                                            },
                                            icon: Align(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.edit,
                                                size: 25,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),
      ),
      floatingActionButton: Obx(() => userListC.isLoading.value
          ? FloatingActionButton(
              onPressed: () {},
              child: CircularProgressIndicator(
                backgroundColor: black,
              ),
            )
          : SizedBox()),
    );
  }
}
// sizeBox20,
// Container(
//   height: 85,
//   child: ListView.builder(
//     physics: BouncingScrollPhysics(),
//     primary: false,
//     shrinkWrap: true,
//     itemCount: resourceListC.resource.length,
//     scrollDirection: Axis.horizontal,
//     itemBuilder: (BuildContext context, int index) {
//       final resourceList = resourceListC.resource[index];
//       return Padding(
//         padding: padding10,
//         child: Column(
//           children: [
//             CircleAvatar(
//               backgroundColor: HexColor(resourceList.color),
//               radius: 30,
//               child: KText(text: '${resourceList.year}'),
//             ),
//             SizedBox(height: 5),
//             KText(
//               text: resourceList.name,
//               color: black,
//               fontSize: 12,
//             ),
//           ],
//         ),
//       );
//     },
//   ),
// ),
// sizeBox10,
