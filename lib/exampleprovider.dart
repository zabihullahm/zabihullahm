import 'package:flutter/material.dart';

class Exampleprovider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setval(double val) {
    _value = val;
    notifyListeners();
  }
}
