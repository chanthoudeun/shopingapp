import 'package:get/get.dart';

import 'logic.dart';

class FavoriteShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteShopLogic());
  }
}
