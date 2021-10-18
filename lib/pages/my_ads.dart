import 'package:flutter/material.dart';
import 'package:flutter_ads_app/widgets/list_my_ads.dart';

class MyAds extends StatelessWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My Ads'),
      ),
      body: ListMyAds(),
    );
  }
}
