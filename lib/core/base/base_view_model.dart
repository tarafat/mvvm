import 'package:flutter/foundation.dart';

abstract class BaseViewModel extends ChangeNotifier {
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;
  String? get error => _error;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setError(String? error) {
    _error = error;
    notifyListeners();
  }

  @protected
  Future<void> handleError(dynamic error) async {
    setError(error.toString());
  }

  @protected
  Future<T?> handleFuture<T>(Future<T> future) async {
    try {
      setLoading(true);
      final result = await future;
      setError(null);
      return result;
    } catch (e) {
      await handleError(e);
      return null;
    } finally {
      setLoading(false);
    }
  }
}
