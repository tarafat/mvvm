enum LogLevel { debug, info, warning, error }

class Logger {
  static void log(LogLevel level, String message, {dynamic error, StackTrace? stackTrace}) {
    final timestamp = DateTime.now().toIso8601String();
    final levelString = level.toString().split('.').last.toUpperCase();

    String logMessage = '[$timestamp] $levelString: $message';
    if (error != null) {
      logMessage += '\nError: $error';
    }
    if (stackTrace != null) {
      logMessage += '\nStackTrace: $stackTrace';
    }

    // In development, print to console
    print(logMessage);

    // TODO: In production, you might want to:
    // 1. Save logs to a file
    // 2. Send logs to a remote logging service
    // 3. Filter logs based on environment
  }

  static void d(String message) => log(LogLevel.debug, message);
  static void i(String message) => log(LogLevel.info, message);
  static void w(String message, {dynamic error}) => log(LogLevel.warning, message, error: error);
  static void e(String message, {dynamic error, StackTrace? stackTrace}) => log(LogLevel.error, message, error: error, stackTrace: stackTrace);
}
