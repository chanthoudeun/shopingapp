import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mall/login/logic.dart';
import 'package:mall/model/users_response/users_response.dart';

class UserCache {
  Future<Box<UsersResponse>> getBox() async {
    if (!Hive.isBoxOpen("user_box")) {
      return await Hive.openBox<UsersResponse>("user_box");
    }
    return Hive.box<UsersResponse>("user_box");
  }

  Future<UsersResponse?> getUser() async {
    Box<UsersResponse> box = await getBox();
    if (!box.isOpen) {
      return null;
    }

    UsersResponse? data = box.get("user_box");
    if (data == null) {
      UsersResponse defaultData = UsersResponse();
      await setUser(defaultData);
      data = box.get("user_data");
    }
    Get.find<LoginLogic>().state.user.value = data ?? UsersResponse();
    return data;
  }

  Future<void> setUser(UsersResponse user) async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return null;
    }
    box.put("user_box", user);
  }
}
