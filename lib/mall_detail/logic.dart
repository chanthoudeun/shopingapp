import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/api_service.dart';
import 'package:mall/model/mall_detail_response/mall_detail_response.dart';

import 'state.dart';

class MallDetailLogic extends GetxController {
  final MallDetailState state = MallDetailState();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.id.value = Get.arguments["id"];
    fetchMallDetail();
  }

  Future<void> fetchMallDetail() async {
    try {
      final response = await APIService.instance.request(
        '/Mall/${state.id.value}',
        DioMethod.get,
      );
      if (response.statusCode == 200) {
        state.mallDetail.value = MallDetailResponse.fromJson(response.data);
        //mallData.map((json) => MallListResponse.fromJson(json)).toList();

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
