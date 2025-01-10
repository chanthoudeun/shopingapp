import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';

class CardShop extends StatelessWidget {
  const CardShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.SHOPDETAIL);
      },
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(width: 0.3, color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            "https://th.bing.com/th/id/OIP.S8NZyt6g21MWXZwQXQKBSAHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain",
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
                                              1)
                                      : null,
                                ),
                              );
                            },
                            errorBuilder: (BuildContext context, Object error,
                                StackTrace? stackTrace) {
                              return Center(
                                child: Text(
                                  'Image failed to load',
                                  style: TextStyle(color: Colors.red),
                                ),
                              );
                            },
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Zara",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.category,
                                  size: 13,
                                  color: Colors.pink,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Fashion",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black45),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 13,
                                  color: Colors.pink,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "L1-75 Chip Mong 271 Mega Mall",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black45),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  padding: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.pink.withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    "Offer Available",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.pink),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 100,
                                  padding: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.pink.withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    "New Arrival",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.pink),
                                  ),
                                ),
                              ],
                            )
                          ])),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
