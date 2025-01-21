import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:mall/shop_list/logic.dart';
import 'package:mall/shop_list/state.dart';

class CardShop extends StatefulWidget {
  final String? name;
  final String? picture;
  final String? category;
  final String? floor;
  final String? address;
  final bool isOfferAvailable;
  final bool isNewArrival;

  CardShop({
    super.key,
    this.name,
    this.picture,
    this.category,
    this.floor,
    this.address,
    required this.isOfferAvailable,
    required this.isNewArrival,
  });

  @override
  State<CardShop> createState() => _CardShopState();
}

class _CardShopState extends State<CardShop> {
  final ShopListLogic logic = Get.put(ShopListLogic());

  final ShopListState state = Get.find<ShopListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                  color: Colors.black12, blurRadius: 2, offset: Offset(0, 1))
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
                      widget.picture ??
                          "https://th.bing.com/th/id/OIP.S8NZyt6g21MWXZwQXQKBSAHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain",
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
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
                        widget.name ?? "Zara",
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
                            widget.category ?? "Fashion",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black45),
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
                          Row(
                            children: [
                              Text(
                                "${widget.floor ?? "L1-75"}, ",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                              Text(
                                "${widget.address ?? " Chip Mong 271 Mega Mall"}",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (widget.isOfferAvailable)
                            Container(
                              height: 30,
                              width: 100,
                              padding: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Offer Available",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.pink),
                              ),
                            ),
                          if (widget.isNewArrival)
                            Container(
                              height: 30,
                              width: 100,
                              padding: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
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
  }
}
