import 'package:dio/dio.dart';
import '../../domain/either/either.dart';

class AppHttpDio {
  final Dio _dio;

  AppHttpDio({
    required String baseUrl,
    required Dio dio,
  }) : _dio = dio {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      // headers: _setHeaders, // Not provided in rules but mentioned
    );
  }

  Future<Either<String, Map<String, dynamic>>> get(
    String endpoint, {
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: params,
      );

      if (response.data is Map<String, dynamic>) {
        return Either.success(response.data as Map<String, dynamic>);
      } else {
        return Either.failure('Formato de respuesta no soportado');
      }
    } on DioException catch (e) {
      return Either.failure(_mapError(e));
    } catch (e) {
      return Either.failure('Error inesperado: $e');
    }
  }

  String _mapError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return 'Tiempo de espera agotado';
      case DioExceptionType.badResponse:
        final status = error.response?.statusCode;
        return 'Error del servidor (Código: $status)';
      case DioExceptionType.connectionError:
        return 'Sin conexión a internet';
      default:
        return 'Error de conexión: ${error.message}';
    }
  }
}
