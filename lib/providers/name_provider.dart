import 'package:flutter/material.dart' show ChangeNotifier;

class NameProvider extends ChangeNotifier {
  String? _name;
  String? get name => _name;

  updateName(String? x) {
    _name = x;
    notifyListeners();
  }
}
