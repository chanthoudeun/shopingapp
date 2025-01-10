import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/shop_list/Widget/card_category.dart';
import 'package:mall/shop_list/Widget/card_shop.dart';

import 'logic.dart';
import 'state.dart';

class FavoriteShopPage extends StatelessWidget {
  FavoriteShopPage({Key? key}) : super(key: key);

  final FavoriteShopLogic logic = Get.put(FavoriteShopLogic());
  final FavoriteShopState state = Get.find<FavoriteShopLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Favorie Shop",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: CardCategory(),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: CardShop(),
            )
          ],
        ),
      ),
    );
  }
}
