import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/model/user_response/user_response.dart';

class LoginState {
  var user = UserResponse().obs;
  TextEditingController taskControllerUser = TextEditingController();
  TextEditingController taskControllerPassword = TextEditingController();
}
