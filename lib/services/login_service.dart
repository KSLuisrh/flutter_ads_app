import 'package:flutter_ads_app/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

class LoginService with ChangeNotifier {
  final String _baseUrl = 'https://adlisting.herokuapp.com';

  Future<String> authUser(User user) async {
    final url = Uri.https(_baseUrl, '/auth/register');
    final resp = await http.post(url, body: user.toJson());
    final decodedData = json.decode(resp.body);

    return decodedData;
  }
}
