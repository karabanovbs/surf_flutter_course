class NetworkException implements Exception {
  final String requestUrl;
  final String error;

  NetworkException(
    this.requestUrl,
    this.error,
  );

  @override
  String toString() {
    return "В запросе '$requestUrl' возникла ошибка: $error";
  }
}
