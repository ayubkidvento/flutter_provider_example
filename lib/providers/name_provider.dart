import 'package:flutter/material.dart' show ChangeNotifier;

class NameProvider extends ChangeNotifier {
  String? _name;
  String? get name => _name;

  String? _address;
  String? get address => _address;

  updateName(String? x) {
    _name = x;
    notifyListeners();
  }

  updateAddress(String? x) {
    _address = x;
    notifyListeners();
  }
}
