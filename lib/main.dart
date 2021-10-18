import 'package:flutter/material.dart';
import 'package:flutter_ads_app/routes/route.dart';
import 'package:flutter_ads_app/services/login_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginService())],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        routes: getApplicationRoutes(),
        initialRoute: '/',
      ),
    );
  }
}