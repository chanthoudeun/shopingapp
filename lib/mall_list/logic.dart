import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/mall_list_response/mall_list_response.dart';

import 'state.dart';

class MallListLogic extends GetxController {
  final MallListState state = MallListState();

  @override
  void onInit() {
    super.onInit();
    fetchMallList();
  }

  Future<void> fetchMallList() async {
    final Dio dio = Dio();
    var user = await Get.find<UserCache>().getUser();
    if (user?.token == null || (user?.token ?? "").isEmpty) {
      print("Error: Authorization token is missing.");
      return;
    }
    try {
      final response = await dio.get(
        "https://uat.chipmong.com:8787/TestApi/api/Mall/getAll",
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            HttpHeaders.authorizationHeader: "Bearer ${user?.token}"
          },
          validateStatus: (status) => status! < 500,
        ),
      );
      if (response.statusCode == 200) {
        final List<dynamic> mallData = response.data;
        state.mallList.value =
            mallData.map((json) => MallListResponse.fromJson(json)).toList();
        // state.mallList.value= MallListResponse.fromJson(response.data);
        print("success\n");
        update();
      } else {
        throw Exception('Failed to Mall List');
      }
    } on DioException catch (e) {
      print('DioException: ${e.message}');
      if (e.response?.statusCode == 401) {
        print("Error 401: Unauthorized. Please check the token.");
      }
    } catch (e) {
      print('Unexpected Error: ${e}');
    }
  }
}
