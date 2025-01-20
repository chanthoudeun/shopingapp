import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/data/api_service.dart';
import 'package:mall/model/shop_response/shop_response.dart';

import 'state.dart';

class ShopListLogic extends GetxController {
  final ShopListState state = ShopListState();

  @override
  void onInit() {
    super.onInit();
    fetchShopList();
  }

  Future<void> fetchShopList() async {
    try {
      final response = await APIService.instance.request(
        '/Shop/getAll',
        DioMethod.get,
      );
      if (response.statusCode == 200) {
        final List<dynamic> shopData = response.data;

        state.shopList.value =
            shopData.map((json) => ShopResponse.fromJson(json)).toList();

        print("success\n");
        update();
      } else {
        throw Exception('Failed to get shop List');
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
