import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/users_response/users_response.dart';
import 'package:mall/route/app_route.dart';

import '../data/api_service.dart';
import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  var userCache = Get.find<UserCache>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> fetchLogIn() async {
    final dio = Dio();

    try {
      final response = await APIService.instance.request(
        '/Authentication/login',
        DioMethod.post,
        param: {
          'userName': state.taskControllerUser.text,
          'password': state.taskControllerPassword.text,
          'isactive': true,
          'role': "Customer",
        },
      );

      if (response.statusCode == 200) {
        // Successful login, process the response data
        state.user.value = UsersResponse.fromJson(response.data);
        update();
        print("Token: ${state.user.value.token}");
        print("Message: ${state.user.value.message}");
        print("User:${state.user.value.username}");
        await userCache.setUser(state.user.value);
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
}
