import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mall/model/user_response/user_response.dart';

class RegisterScreenState {
  var user=UserResponse().obs;
 TextEditingController userController =TextEditingController();
 TextEditingController passwordController =TextEditingController();
}
