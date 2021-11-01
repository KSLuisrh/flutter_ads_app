import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

class AdsService extends ChangeNotifier {
  final String _baseUrl = 'https://adlisting.herokuapp.com';
  List? adsList;

  AdsService() {
    getAdsList();
  }

  Future getAdsList() async {
    final url = Uri.parse('${_baseUrl}/ads');

    try {
      final resp = await http.get(url, headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      });
      final decodedData = json.decode(resp.body);
      adsList = decodedData['data'];
      notifyListeners();
      print(adsList!);
    } catch (e) {
      print(e);
    }
  }
}
