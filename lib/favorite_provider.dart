import 'package:flutter/material.dart';

class FavoriteProvider with ChangeNotifier {
  List<int> _selected = [];
  List<int> get selected => _selected;

  void additem(val) {
    _selected.add(val);
    notifyListeners();
  }
}
