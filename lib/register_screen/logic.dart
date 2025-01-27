import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/users_response/users_response.dart';
import 'package:mall/route/app_route.dart';

import 'state.dart';

class RegisterScreenLogic extends GetxController {
  final RegisterScreenState state = RegisterScreenState();
  var userCache = Get.find<UserCache>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

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
        state.user.value = UsersResponse.fromJson(response.data);
        update();
        print("Register Success");
        print("Token: ${state.user.value.token}");
        print("Message: ${state.user.value.message}");
        await userCache.setUser(state.user.value);
        Get.offNamed(AppRoute.HOME);
      } else {
        print("Register not success");
      }
    } catch (e) {
      print('Error occurred while register: $e');
    }
  }
}
