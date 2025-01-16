import 'package:get/get.dart';

import 'state.dart';

class MallDetailLogic extends GetxController {
  final MallDetailState state = MallDetailState();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.id.value = Get.arguments["id"];
  }
}
