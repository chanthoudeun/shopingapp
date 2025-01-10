import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';

import 'logic.dart';
import 'state.dart';

class MallListPage extends StatelessWidget {
  MallListPage({Key? key}) : super(key: key);

  final MallListLogic logic = Get.put(MallListLogic());
  final MallListState state = Get.find<MallListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 1)
            ]),
            child: AppBar(
              title: Text(
                "Mall List",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              backgroundColor: Colors.white,
            ),
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mall Location",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              "Explore our mall location for easy travel.",
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 1)
                          ]),
                      child: ListTile(
                        onTap: () {
                          Get.toNamed(AppRoute.MALLDETAIL);
                        },
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.pink.shade400,
                          size: 27,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chip Mong 271 Mega Mall",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "HVRF+8W9, Oknha Mong Reththy St. (1928), Phnom Penh",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          size: 25,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
