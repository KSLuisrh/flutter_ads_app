import 'package:flutter/material.dart';
import 'package:flutter_ads_app/pages/login.dart';
import 'package:flutter_ads_app/services/login_service.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({required this.screen});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    final loginService = Provider.of<LoginService>(context);

    return loginService.isAuth ? screen : Login();
  }
}
