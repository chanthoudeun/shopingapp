import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/model/users_response/users_response.dart';

class LoginState {
  var user = UsersResponse().obs;
  TextEditingController taskControllerUser = TextEditingController();
  TextEditingController taskControllerPassword = TextEditingController();
}
