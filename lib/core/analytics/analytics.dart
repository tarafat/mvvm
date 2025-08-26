import '../logging/logger.dart';

class Analytics {
  static void logEvent(String eventName, {Map<String, dynamic>? parameters}) {
    // Log the event
    Logger.i('Analytics Event: $eventName${parameters != null ? ' params: $parameters' : ''}');

    // TODO: Implement your analytics service (Firebase Analytics, Mixpanel, etc.)
    // Example:
    // FirebaseAnalytics.instance.logEvent(
    //   name: eventName,
    //   parameters: parameters,
    // );
  }

  static void logScreenView(String screenName) {
    logEvent('screen_view', parameters: {'screen_name': screenName});
  }

  static void logUserAction(String action, {Map<String, dynamic>? parameters}) {
    logEvent('user_action', parameters: {'action': action, ...?parameters});
  }

  static void logError(String error, {StackTrace? stackTrace}) {
    logEvent('error', parameters: {'error': error, 'stack_trace': stackTrace?.toString()});
  }
}
