//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';

import 'logic.dart';
import 'state.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final SplashScreenLogic logic = Get.put(SplashScreenLogic());

  final SplashScreenState state = Get.find<SplashScreenLogic>().state;

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child:  Center(
        child: Image.asset("assets/images/Chip_Mong_Malls_Logo.jpg",height: 250,),
      ),

    ));
  }
}
