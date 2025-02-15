import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/home_sreen/logic.dart';
import 'package:mall/home_sreen/state.dart';
import 'package:mall/route/app_route.dart';

class HomeSreenPage extends StatefulWidget {
  HomeSreenPage({Key? key}) : super(key: key);

  @override
  State<HomeSreenPage> createState() => _HomeSreenPageState();
}

class _HomeSreenPageState extends State<HomeSreenPage> {
  final HomeSreenLogic logic = Get.put(HomeSreenLogic());
  final HomeSreenState state = Get.find<HomeSreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 270,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                boxShadow: []),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //user profile
                    CircleAvatar(
                      radius: 58,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.fVzHHTFBNbxiuPLgdK-1MgHaLH?rs=1&pid=ImgDetMain",
                        ),
                      ),
                    ),
                    Obx(() {
                      return Text(
                        "សួស្ដី,\n" + "${state.user.value.username}",
                        // Username
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "TimeNewRoman"),
                      );
                    }),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text(
                                  'LogOut',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: const Text(
                                  'Are you sure to LogOut?',
                                  textAlign: TextAlign.center,
                                ),
                                actions: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context, 'No');
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          padding: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            border: Border.all(
                                                color: Colors.pink, width: 1),
                                          ),
                                          child: Text(
                                            'No',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Obx(() {
                                        return GestureDetector(
                                          onTap: () async {
                                            logic.signOut();
                                          },
                                          child: logic.state.isLoading.value ==
                                                  true
                                              ? CircularProgressIndicator()
                                              : Container(
                                                  height: 40,
                                                  width: 80,
                                                  padding:
                                                      EdgeInsets.only(top: 8),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    border: Border.all(
                                                        color: Colors.pink,
                                                        width: 1),
                                                  ),
                                                  child: Text(
                                                    'Yes',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                        );
                                      }),
                                    ],
                                  ),
                                ],
                              ));
                    },
                    icon: Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.MALL);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 136.5,
                  width: 300,
                  padding: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-1, 0),
                          blurRadius: 1,
                        )
                      ]),
                  //Mall list button
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Text(
                              "Chip Mong Mall List",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "TimeNewRoman",
                              ),
                            ),
                            Text(
                              "shopping global brand",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image.asset(
                            'assets/images/Chip_Mong_Mall_list.png',
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.SHOPLIST);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 136.5,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 0),
                          blurRadius: 1,
                        )
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          //Shop List button
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Chip Mong Shop List",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "TimeNewRoman"),
                              ),
                              Text(
                                "Explore our marketplace",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            child: Image.asset(
                              'assets/images/Chip_Mong_Shop_list.png',
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
