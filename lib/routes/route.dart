import 'package:flutter/material.dart';
import 'package:flutter_ads_app/pages/create_ad.dart';
import 'package:flutter_ads_app/pages/home.dart';
import 'package:flutter_ads_app/pages/login.dart';
import 'package:flutter_ads_app/pages/my_ads.dart';
import 'package:flutter_ads_app/pages/profile.dart';
import 'package:flutter_ads_app/pages/register.dart';
import 'package:flutter_ads_app/pages/settings.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Login(),
    'register': (BuildContext context) => Register(),
    'home': (BuildContext context) => Home(),
    'settings': (BuildContext context) => Settings(),
    'profile': (BuildContext context) => Profile(),
    'myAds': (BuildContext context) => MyAds(),
    'createAd': (BuildContext context) => CreateAd(),
  };
}
