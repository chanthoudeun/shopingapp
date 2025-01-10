import 'package:get/get.dart';

import 'logic.dart';

class ShopListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopListLogic());
  }
}
