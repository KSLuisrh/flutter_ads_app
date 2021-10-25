import 'package:flutter/material.dart';
import 'package:flutter_ads_app/routes/route.dart';
import 'package:flutter_ads_app/services/auth_service.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService())
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        routes: getApplicationRoutes(),
        initialRoute: '/',
      ),
    );
  }
}
