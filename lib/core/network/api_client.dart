import 'package:dio/dio.dart';
import '../error/exceptions/app_exceptions.dart';

class ApiClient {
  final Dio _dio;

  ApiClient() : _dio = Dio() {
    _dio.options.baseUrl = const String.fromEnvironment('API_BASE_URL', defaultValue: 'https://api.example.com');
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> get<T>(String path, {Map<String, dynamic>? queryParameters, Options? options, T Function(dynamic)? parser}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters, options: options);
      return _handleResponse(response, parser);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<T> post<T>(String path, {dynamic data, Map<String, dynamic>? queryParameters, Options? options, T Function(dynamic)? parser}) async {
    try {
      final response = await _dio.post(path, data: data, queryParameters: queryParameters, options: options);
      return _handleResponse(response, parser);
    } catch (e) {
      throw _handleError(e);
    }
  }

  T _handleResponse<T>(Response response, T Function(dynamic)? parser) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      if (parser != null) {
        return parser(response.data);
      }
      return response.data;
    }
    throw NetworkException('HTTP Error: ${response.statusCode}', code: response.statusCode.toString(), details: response.data);
  }

  AppException _handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return NetworkException('Connection timeout');
        case DioExceptionType.connectionError:
          return NetworkException('No internet connection');
        default:
          return NetworkException(error.message ?? 'Network error occurred', details: error.response?.data);
      }
    }
    return NetworkException(error.toString());
  }
}
