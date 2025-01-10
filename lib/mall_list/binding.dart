import 'package:get/get.dart';

import 'logic.dart';

class MallListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MallListLogic());
  }
}
