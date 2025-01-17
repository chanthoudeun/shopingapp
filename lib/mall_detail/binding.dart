import 'package:get/get.dart';
import 'package:mall/mall_list/logic.dart';

import 'logic.dart';

class MallDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MallDetailLogic());
  }
}
