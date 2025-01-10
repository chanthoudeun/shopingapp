import 'package:get/get.dart';
import 'package:mall/home_sreen/logic.dart';

class HomeSreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSreenLogic());
  }
}
