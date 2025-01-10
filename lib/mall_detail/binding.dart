import 'package:get/get.dart';

import 'logic.dart';

class MallDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MallDetailLogic());
  }
}
