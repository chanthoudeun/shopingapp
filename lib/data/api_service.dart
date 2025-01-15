import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mall/data/user_cache.dart';

enum DioMethod { post, get, put, delete }

class APIService {
  APIService._singleton();

  static final APIService instance = APIService._singleton();
  final userCache = UserCache();

  Future<Response> request(
    String endpoint,
    DioMethod method, {
    Map<String, dynamic>? param,
    formData,
  }) async {
    try {
      var user = await userCache.getUser();
      final dio = Dio(
        BaseOptions(
          baseUrl: "https://uat.chipmong.com:8787/TestApi/api",
          contentType: 'application/json',
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer ${user?.token}',
          },
          validateStatus: (status) => status! < 500,
        ),
      );
      switch (method) {
        case DioMethod.post:
          return dio.post(
            endpoint,
            data: param ?? formData,
          );
        case DioMethod.get:
          return dio.get(
            endpoint,
            queryParameters: param,
          );
        case DioMethod.put:
          return dio.put(
            endpoint,
            data: param ?? formData,
          );
        case DioMethod.delete:
          return dio.delete(
            endpoint,
            data: param ?? formData,
          );
        default:
          return dio.post(
            endpoint,
            data: param ?? formData,
          );
      }
    } catch (e) {
      throw Exception('Network error');
    }
  }
}
