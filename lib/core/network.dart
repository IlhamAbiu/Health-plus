import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

class Network {
  Network._();

  static Dio? _dio;

  static Dio _init() {
    final options = BaseOptions(connectTimeout: const Duration(minutes: 1));
    _dio = Dio(options);
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        queryParameters: true,
        requestBody: true,
        canShowLog: kDebugMode,
        showCUrl: true,
      ),
    );
    return _dio!;
  }

  static Future<Response<dynamic>> get(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic> headers = const {
        'Content-Type': 'application/json',
      }}) async {
    _dio ??= _init();
    try {
      return await _dio!.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
    } on DioException catch (e) {
      try {
        return e.response!;
      } catch (_) {
        rethrow;
      }
    } catch (_) {
      rethrow;
    }
  }

  static Future<Response<dynamic>> post(String url,
      {Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic> headers = const {
        'Content-Type': 'application/json',
      }}) async {
    _dio ??= _init();
    try {
      return await _dio!.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
    } on DioException catch (e) {
      try {
        return e.response!;
      } catch (_) {
        rethrow;
      }
    } catch (_) {
      rethrow;
    }
  }
}
