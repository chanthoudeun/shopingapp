import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/api_service.dart';
import 'package:mall/model/shop_detail_response/shop_detail.dart';
import 'package:mall/model/shop_detail_response/shop_detail_response.dart';

import 'state.dart';

class ShopDetailLogic extends GetxController {
  final ShopDetailState state = ShopDetailState();

  @override
  void onInit() {
    super.onInit();
    state.id.value = Get.arguments["id"];
    fetchShopDetail();
  }

  Future<void> fetchShopDetail() async {
    try {
      final response = await APIService.instance.request(
        '/Shop/${state.id.value}/shopdetail',
        DioMethod.get,
      );
      if (response.statusCode == 200) {
        state.shopDetail.value = ShopDetailResponse.fromJson(response.data);
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
