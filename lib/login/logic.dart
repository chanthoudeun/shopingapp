import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/user_response/user_response.dart';
import 'package:mall/route/app_route.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  var userCache = Get.find<UserCache>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkAuth();
    // fetchProductById();
  }

  Future<void> fetchLogIn() async {
    final dio = Dio();
    final data = {
      "userName": state.taskControllerUser.text.toString(),
      "password": state.taskControllerPassword.text.toString(),
      "isactive": true,
      "role": "Customer",
    };

    try {
      final response = await dio.post(
        'https://uat.chipmong.com:8787/TestApi/api/Authentication/login',
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        // Successful login, process the response data
        state.user.value = UserResponse.fromJson(response.data);
        update();
        print("Token: ${state.user.value.token}");
        print("Message: ${state.user.value.message}");
        Get.offNamed(AppRoute.HOME);
      }
    } on DioError catch (e) {
      // Handle Dio errors such as network failure or status code error
      if (e.response != null) {
        print('Error response status code: ${e.response?.statusCode}');
        print('Error response data: ${e.response?.data}');
        Get.snackbar(
          "Error",
          " ${e.response?.data}",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.orange,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
        );
      } else {
        // Error that occurred before the response, such as network issues
        print('Error: ${e.message}');
      }
    }
  }
  Future<void> checkAuth() async {
    var user = await userCache.getUser();
    if ((user?.token ?? "").isNotEmpty || user?.token != null) {
      Get.offNamed(AppRoute.HOME);
      // Get.offNamed(AppRoute.LOGIN);
    } else {
      Get.offNamed(AppRoute.LOGIN);
    }
  }
}
