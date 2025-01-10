import 'package:get/get.dart';

import 'logic.dart';

class ShopDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopDetailLogic());
  }
}
