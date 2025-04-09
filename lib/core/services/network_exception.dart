class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  static NetworkException fromStatusCode(int code) {
    switch (code) {
      case 400:
        return NetworkException('Bad Request');
      case 401:
        return NetworkException('Unauthorized');
      default:
        return NetworkException('Something went wrong');
    }
  }
}
