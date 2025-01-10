import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';
import 'package:mall/shop_list/Widget/card_category.dart';
import 'package:mall/shop_list/Widget/card_shop.dart';

import 'logic.dart';
import 'state.dart';

class ShopListPage extends StatelessWidget {
  ShopListPage({Key? key}) : super(key: key);

  final ShopListLogic logic = Get.put(ShopListLogic());
  final ShopListState state = Get.find<ShopListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Shop List",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          //button favorite
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoute.FAVORITESHOP);
              },
              icon: Icon(
                Icons.favorite_border_outlined,
              )),
          //button notification
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_rounded,
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              //Search Textfield
              child: TextField(
                controller: null,
                style: TextStyle(height: 0.7),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    //text in textfield
                    hintText: "Search...",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                    //icon before text
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Colors.black, width: 0.7))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              //call CardCartegory reusable widget
              child: CardCategory(),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              //call CardShop reusable widget
              child: CardShop(),
            )
          ],
        ),
      ),
    );
  }
}
