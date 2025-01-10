import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';

import 'logic.dart';
import 'state.dart';

class RegisterScreenPage extends StatelessWidget {
  RegisterScreenPage({Key? key}) : super(key: key);

  final RegisterScreenLogic logic = Get.put(RegisterScreenLogic());
  final RegisterScreenState state = Get.find<RegisterScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
            size: 18,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 380,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ឈ្មោះអ្នកប្រើប្រាស់",
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 1)
                            ]),
                        child: TextField(
                          controller: null,
                          style: TextStyle(height: 0.7),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            hintText: "សូមបញ្ចូលឈ្មោះរបស់អ្នក",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "លេខកូដសម្ងាត់",
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      //password Textfeild
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 1)
                            ]),
                        child: TextField(
                          obscureText: _isObscure,
                          controller: null,
                          style: TextStyle(height: 0.7),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            hintText: "សូមបញ្ចូលលេខកូដសម្ងាត់",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        //go to Home page by tap on container
                        onTap: () {
                          Get.toNamed(AppRoute.HOME);
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 120,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    blurRadius: 1)
                              ]),
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -90,
                  left: 80,
                  child: Image.network(
                    'https://www.chipmong.com/wp-content/uploads/2020/01/timeline5a.png',
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
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  color: Colors.grey,
                  width: 100,
                ),
                Text(
                  " Or Sign in with ",
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                  width: 100,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://th.bing.com/th/id/OIP.zGN-I33BmulL9J4LjyZmQAHaHa?rs=1&pid=ImgDetMain",
                        ),
                      ),
                      Text(
                        "Google",
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          "https://th.bing.com/th/id/OIP.ml2fFlFs7ULbM_6vTpHzWwHaHa?rs=1&pid=ImgDetMain",
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Number phone TextFeild
          ],
        ),
      ),
    ));
  }
}
