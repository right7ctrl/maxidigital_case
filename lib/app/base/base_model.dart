import 'package:flutter/material.dart';

class BaseModel extends ChangeNotifier {
  String? errorMessage;
  bool hasError = false;
  bool isLoading = false;

  void toggleLoading(bool val) {
    if (val == isLoading) return;
    setError(null);
    isLoading = val;
    notifyListeners();
  }

  void setError(String? msg) {
    errorMessage = msg;
    hasError = errorMessage == null ? false : true;
    notifyListeners();
  }
}
