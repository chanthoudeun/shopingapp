import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/user_cache.dart';
import 'package:mall/model/mall_response/mall_response.dart';

import '../data/api_service.dart';
import 'state.dart';

class MallListLogic extends GetxController {
  final MallListState state = MallListState();

  @override
  void onInit() {
    super.onInit();
    fetchMallList();
  }

  Future<void> fetchMallList() async {
    var user = await Get.find<UserCache>().getUser();
    if (user?.token == null || (user?.token ?? "").isEmpty) {
      print("Error: Authorization token is missing.");
      return;
    }
    try {
      final response = await APIService.instance.request(
        '/Mall/getAll',
        DioMethod.get,
      );
      if (response.statusCode == 200) {
        final List<dynamic> mallData = response.data;

        state.mallList.value =
            mallData.map((json) => MallResponse.fromJson(json)).toList();

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

// Future<void> delay() async {
//   await 5.delay();
// }
}
