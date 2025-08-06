import 'package:flutter/material.dart';

class LoginViewmodel extends ChangeNotifier {
  String userName = '';

  void updateUserName(String value) {
    userName = value;
    notifyListeners();
  }

  bool isValid() => userName.isNotEmpty;
}
