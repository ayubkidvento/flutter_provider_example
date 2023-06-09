import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:http/http.dart' as http;

import '../models/user_model.dart';
import 'name_provider.dart';

class FetchDetailProvider extends ChangeNotifier {
  final NameProvider? _nameProvider;

  bool _loading = false;
  String? _error;
  UserModel? _detail;

  bool get loading => _loading;
  String? get error => _error;
  UserModel? get detail => _detail;

  FetchDetailProvider(this._nameProvider) {
    if (_nameProvider != null && _nameProvider!.name != null) {
      fetchValue(_nameProvider!.name!);
    }
  }

  // fetch value
  fetchValue(String name) async {
    try {
      _loading = true;
      notifyListeners();
      final Uri uri = Uri.parse('https://api.github.com/users/$name');
      final response = await http.get(uri);
      _loading = false;
      notifyListeners();
      log('STATUS ${response.statusCode}, ${response.body}');
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        _detail = UserModel.fromMap(result);
        notifyListeners();
      } else {
        throw ('Something went wrong...');
      }
    } catch (e) {
      log('ERROR $e');
      _loading = false;
      _error = e.toString();
      notifyListeners();
    }
  }
}
