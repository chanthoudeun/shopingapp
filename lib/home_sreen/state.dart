import 'package:get/get.dart';

import 'package:mall/model/users_response/users_response.dart';

class HomeSreenState {
  var user = UsersResponse().obs;
  Rx<bool> isSigningOut = false.obs;
  Rx<bool> isLoading = false.obs;
}
