import 'package:flutter/material.dart';

class ProviderClass with ChangeNotifier {
  int _count = 10;
  int get count => _count;

  void incr() {
    _count = _count + 5;
    notifyListeners();
  }
}
