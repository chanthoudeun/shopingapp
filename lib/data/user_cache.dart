import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mall/login/logic.dart';
import 'package:mall/model/user_response/user_response.dart';

class UserCache {
  Future<Box<UserResponse>> getBox() async {
    if (!Hive.isBoxOpen("user_box")) {
      return await Hive.openBox<UserResponse>("user_box");
    }
    return Hive.box<UserResponse>("user_box");
  }
  Future<UserResponse?> getUser() async {
    Box<UserResponse> box = await getBox();
    if (!box.isOpen) {
      return null;
    }

    UserResponse? data = box.get("user_box");
    if (data == null) {
      UserResponse defaultData = UserResponse();
      await setUser(defaultData);
      data = box.get("user_data");
    }
    Get.find<LoginLogic>().state.user.value = data ?? UserResponse();
    return data;
  }

  Future<void> setUser(UserResponse user) async {
    Box box = await getBox();
    if (box.isOpen == false) {
      return null;
    }
    box.put("user_box", user);
  }
}
