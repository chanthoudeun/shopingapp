import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/users_response/users_response.dart';

import 'state.dart';

class HomeSreenLogic extends GetxController {
  final HomeSreenState state = HomeSreenState();
  final userCache = UserCache();

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  Future<void> getUser() async {
    var user = await userCache.getUser();
    state.user.value = user ?? UsersResponse();
    update();
  }

// void signOut() {
//   Hive.box('user_box').clear();
// }
}
