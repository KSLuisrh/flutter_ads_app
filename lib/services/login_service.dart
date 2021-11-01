import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

class LoginService with ChangeNotifier {
  final String _baseUrl = 'https://adlisting.herokuapp.com';
  final storage = new FlutterSecureStorage();
  bool isAuth = false;

  LoginService() {
    isUserAuth();
  }

  Future<bool> registerUser(
      String email, String password, String phone, String name) async {
    final url = Uri.parse('${_baseUrl}/auth/register');

    try {
      final resp = await http.post(url,
          body: json.encode({
            "name": name,
            "mobile": phone,
            "email": email,
            "password": password
          }),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          });
      final Map<String, dynamic> decodedData = json.decode(resp.body);

      if (decodedData['status'] == true) {
        print(decodedData);
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> authUser(String email, String password) async {
    final url = Uri.parse('${_baseUrl}/auth/login');

    try {
      final resp = await http.post(url,
          body: json.encode({"email": email, "password": password}),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          });
      final Map<String, dynamic> decodedData = json.decode(resp.body);

      if (decodedData['status'] == true) {
        await storage.write(key: 'token', value: decodedData['data']['token']);
        String? value = await storage.read(key: 'token');
        print(decodedData['data']['token']);
        print("saved token: $value");
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<void> isUserAuth() async {
    String? readToken = await storage.read(key: 'token');
    if (readToken != null) {
      isAuth = true;
      notifyListeners();
    }
  }
}
