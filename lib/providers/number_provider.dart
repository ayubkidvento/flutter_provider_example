import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int? _age;
  int? get age => _age;

  changeAge(int? x) {
    _age = x;
    notifyListeners();
  }
}
