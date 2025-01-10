import 'package:get/get.dart';

import 'logic.dart';

class RegisterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterScreenLogic());
  }
}
