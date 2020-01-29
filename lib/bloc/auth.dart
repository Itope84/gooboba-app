import 'package:flutter/material.dart';

class AuthBloc extends ChangeNotifier {
  String _email;

  String get email {
    return this._email;
  }

  void set email(String val) {
    this._email = val;
    this.notifyListeners();
  }
}
