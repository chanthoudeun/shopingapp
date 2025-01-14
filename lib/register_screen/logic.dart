import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/model/user_response/user_response.dart';
import 'package:mall/route/app_route.dart';

import 'state.dart';

class RegisterScreenLogic extends GetxController {
  final RegisterScreenState state = RegisterScreenState();
  Future<void> register() async {
    Dio dio = Dio();
    final data = {
      "userName": state.userController.text.toString(),
      "password": state.passwordController.text.toString(),
      "isactive": true,
      "role": "Customer",
    };
    try {
      final response = await dio.post(
        'https://uat.chipmong.com:8787/TestApi/api/Authentication/register',
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        state.user.value = UserResponse.fromJson(response.data);
        update();
        print("Register Success");
        print("Token: ${state.user.value.token}");
        print("Message: ${state.user.value.message}");
        Get.offNamed(AppRoute.LOGIN);
      } else {
        print("Register not success");
      }
    } catch (e) {
      print('Error occurred while register: $e');
    }
  }
}
