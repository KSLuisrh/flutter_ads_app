import 'package:flutter/material.dart';
import 'package:flutter_ads_app/pages/create_ad.dart';
import 'package:flutter_ads_app/pages/home.dart';
import 'package:flutter_ads_app/pages/my_ads.dart';
import 'package:flutter_ads_app/pages/profile.dart';
import 'package:flutter_ads_app/pages/register.dart';
import 'package:flutter_ads_app/pages/settings.dart';
import 'package:flutter_ads_app/pages/wrapper.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Wrapper(screen: Home(),),
    'register': (BuildContext context) => Register(),
    'home': (BuildContext context) => Home(),
    'settings': (BuildContext context) => Settings(),
    'profile': (BuildContext context) => Wrapper(screen: Profile(),),
    'myAds': (BuildContext context) => MyAds(),
    'createAd': (BuildContext context) => CreateAd(),
  };
}
