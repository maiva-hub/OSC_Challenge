class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => message;
}

class HttpException implements Exception {
  final String message;
  HttpException(this.message);

  @override
  String toString() => message;
}

class JsonParsingException implements Exception {
  final String message;
  JsonParsingException(this.message);

  @override
  String toString() => message;
}