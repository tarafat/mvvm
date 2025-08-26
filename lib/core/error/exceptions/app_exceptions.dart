abstract class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  AppException(this.message, {this.code, this.details});

  @override
  String toString() => 'AppException: $message ${code != null ? '($code)' : ''}';
}

class NetworkException extends AppException {
  NetworkException(String message, {String? code, dynamic details}) : super(message, code: code, details: details);
}

class ValidationException extends AppException {
  ValidationException(String message, {String? code, dynamic details}) : super(message, code: code, details: details);
}

class AuthenticationException extends AppException {
  AuthenticationException(String message, {String? code, dynamic details}) : super(message, code: code, details: details);
}
