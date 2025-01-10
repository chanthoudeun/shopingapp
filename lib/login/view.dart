import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_fonts/khmer_fonts.dart';
import 'package:mall/model/user_response/user_response.dart';
import 'package:mall/route/app_route.dart';
import 'package:dio/dio.dart';
import 'logic.dart';
import 'state.dart';

class LoginPage extends StatelessWidget {
  bool? value = true;
  bool _isObscure = true;

  LoginPage({
    Key? key,
    this.value,
  }) : super(key: key);

  final LoginLogic logic = Get.put(LoginLogic());
  final LoginState state = Get.find<LoginLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoute.REGISTER);
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 15, color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                  //chipmong retail Logo
                  Container(
                    height: 150,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "ឈ្មោះអ្នកប្រើប្រាស់",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  //Number phone TextFeild
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
                      controller: state.taskControllerUser,
                      style: TextStyle(height: 0.7),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintText: "សូមបញ្ចូលឈ្មោះអ្នកប្រើប្រាស់",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w100),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                      controller: state.taskControllerPassword,
                      style: TextStyle(height: 0.7),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintText: "សូមបញ្ចូលលេខកូដសម្ងាត់",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w100),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ដោយចុចប៊ូតុង \"បន្ទាប់\" អ្នកយល់ព្រមនឹង",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 13),
                  ),
                  //លក្ខខណ្ឌនៃការប្រើប្រាស់ text button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "លក្ខខណ្ឌនៃការប្រើប្រាស់",
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.w100,
                              fontSize: 13),
                        ),
                      ),
                      Text(
                        " និង ",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 13),
                      ),
                      //គោលការណ៍ឯកជន text button
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "គោលការណ៍ឯកជន",
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.w100,
                              fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              //visit as a guest text button
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "ចូលមើលដោយមិនចុះឈ្មោះ",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.pink),
                      ),
                    ),
                  ),
                  //Login Button
                  GestureDetector(
                    //go to Home page by tap on container
                    onTap: () {
                      logic.fetchLogIn();
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 140, right: 140, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                blurRadius: 1)
                          ]),
                      child: Text(
                        "ចូល",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
