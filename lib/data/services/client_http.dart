import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:logger/logger.dart';
import 'package:result_dart/result_dart.dart';

class ClientHttp extends GetxService {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  static ClientHttp get to => Get.find();

  AsyncResult<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: _getOptions(requiresAuth, token),
      );
      _logger.d(
          '$runtimeType: Response body from $url: ${response.data.toString()}');
      return Success(response);
    } on DioException catch (e) {
      _logger.e('GET request failed: ${e.message}');
      return Failure(e);
    }
  }

  AsyncResult<Response> post(
    String url,
    dynamic data, {
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        options: _getOptions(requiresAuth, token),
      );
      _logger.d(
          '$runtimeType: Response body from $url: ${response.data.toString()}');
      return Success(response);
    } on DioException catch (e) {
      _logger.e('POST request failed: ${e.message}');
      return Failure(e);
    }
  }

  AsyncResult<Response> put(
    String url,
    dynamic data, {
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      final response = await _dio.put(
        url,
        data: data,
        options: _getOptions(requiresAuth, token),
      );
      _logger.d(
          '$runtimeType: Response body from $url: ${response.data.toString()}');
      return Success(response);
    } on DioException catch (e) {
      _logger.e('PUT request failed: ${e.message}');
      return Failure(e);
    }
  }

  AsyncResult<Response> patch(
    String url,
    dynamic data, {
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      final response = await _dio.patch(
        url,
        data: data,
        options: _getOptions(requiresAuth, token),
      );
      _logger.d(
          '$runtimeType: Response body from $url: ${response.data.toString()}');
      return Success(response);
    } on DioException catch (e) {
      _logger.e('PATCH request failed: ${e.message}');
      return Failure(e);
    }
  }

  AsyncResult<Response> delete(
    String url, {
    dynamic data,
    bool requiresAuth = false,
    String? token,
  }) async {
    try {
      final response = await _dio.delete(
        url,
        data: data,
        options: _getOptions(requiresAuth, token),
      );
      return Success(response);
    } on DioException catch (e) {
      _logger.e('DELETE request failed: ${e.message}');
      return Failure(e);
    }
  }

  // Helper method to get request options with auth header if needed
  Options _getOptions(bool requiresAuth, String? token) {
    if (requiresAuth && token != null) {
      return Options(
        validateStatus: (status) => status != null && status <= 403,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
    }

    return Options(
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
}
