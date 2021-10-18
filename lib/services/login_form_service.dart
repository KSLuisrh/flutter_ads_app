import 'package:flutter/material.dart';
import 'package:flutter_ads_app/models/user.dart';

class LoginFormProvider extends ChangeNotifier {
  User user;

  LoginFormProvider(this.user);

  set setEmail(String email) {
    user.email = email;
    notifyListeners();
  }
}
