import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mall/model/users_response/users_response.dart';

class RegisterScreenState {
  var user = UsersResponse().obs;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
