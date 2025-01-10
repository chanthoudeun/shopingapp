import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ShopDetailPage extends StatelessWidget {
  ShopDetailPage({Key? key}) : super(key: key);

  final ShopDetailLogic logic = Get.put(ShopDetailLogic());
  final ShopDetailState state = Get.find<ShopDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Shop Detail",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://fastarz.com/wp-content/uploads/2023/09/Turkish-Zara.jpg")),
                ),
                Positioned(
                    bottom: -26,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(27)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 1),
                              blurRadius: 1,
                            )
                          ]),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://storage.googleapis.com/kaggle-datasets-images/3705826/6423766/faff0527e5441d6415fa3eadf2457ae7/dataset-card.jpg?t=2023-09-06-08-57-06"),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 309,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "ZARA",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 80,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          "Opening",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Dui donec sit id eget ut aenean. Orci sit eget dolor purus tincidunt id. At pharetra ut aliquam in fermentum dapibus.",
                    style: TextStyle(fontSize: 12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "G01, Ground Floor, Chip Mong 271 Mega Mall",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Get Direction",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "Mon-Sun , 9:00 AM – 10:00PM",
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "(+855) 69 999 279",
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Membership Benefits",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        Text(
                          "Earn 7% point from ZARA, shop now to earn points!",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 230,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.1),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ZARA's Offers",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 170,
                              width: 249,
                              // padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 1),
                                        blurRadius: 1)
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    child: Image(
                                      height: 90,
                                      width: 249,
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "https://www.ritzmagazine.in/wp-content/uploads/2019/06/ZARA-2.jpg",
                                      ),
                                    ),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Got Yourself ready for ZARA’s upcoming sale for this summer! Check out our store at every Chip Mong Mall.",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          DateTime.now().toString(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
