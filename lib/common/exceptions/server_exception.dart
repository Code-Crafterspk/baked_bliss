class ServerException implements Exception {
  final String errorCode;
  final String message;

  ServerException({required this.errorCode, required this.message});
}
