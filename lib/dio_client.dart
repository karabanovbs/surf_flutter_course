import 'package:dio/dio.dart';

final BaseOptions options = BaseOptions(
  baseUrl: 'https://test-backend-flutter.surfstudio.ru',
  connectTimeout: 5000,
  receiveTimeout: 5000,
  sendTimeout: 5000,
  responseType: ResponseType.json,
);

final Interceptor logInterceptor =
    InterceptorsWrapper(onRequest: (options, handler) {
  print('Dio onRequest: $options');
  return handler.next(options); //continue
}, onResponse: (response, handler) {
  print('Dio onResponse: $response');
  return handler.next(response); // continue
}, onError: (DioError e, handler) {
  print('Dio onError: $e');
  return handler.next(e); //continue
});

final Dio dioClient = Dio(
  options,
)..interceptors.add(logInterceptor);
