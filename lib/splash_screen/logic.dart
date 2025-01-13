import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/route/app_route.dart';

import 'state.dart';

class SplashScreenLogic extends GetxController {
  final SplashScreenState state = SplashScreenState();
  var userCache = Get.find<UserCache>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkAuth();
    // fetchProductById();
  }
  Future<void> checkAuth() async {
    var user = await userCache.getUser();
    await 10.delay();
    if ((user?.token ?? "").isNotEmpty || user?.token != null) {
      Get.offNamed(AppRoute.HOME);
      // Get.offNamed(AppRoute.LOGIN);
    } else {
      Get.offNamed(AppRoute.LOGIN);
    }
  }
}


