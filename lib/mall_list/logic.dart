import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mall/model/mall_list_response/mall_list_response.dart';

import 'state.dart';

class MallListLogic extends GetxController {
  final MallListState state = MallListState();
  @override
  void onInit(){
    super.onInit();
    fetchMallList();
  }
  @override
  void onReady(){
    super.onReady();
    fetchMallList();
  }

  Future<void> fetchMallList() async{
    final Dio dio=Dio();
    try{
      final response= await dio.get("https://uat.chipmong.com:8787/TestApi/api/Mall/getAll");
      if (response.statusCode == 200) {
        final List<dynamic> mallData = response.data;
        state.mallList.value = mallData.map((json) => MallListResponse.fromJson(json)).toList();
       // state.mallList.value= MallListResponse.fromJson(response.data);
        print("success\n");
        update();
      } else {
        throw Exception('Failed to Mall List');
      }
    }on DioError catch(e){
      print('Error: ${e}');
    }
  }
}
