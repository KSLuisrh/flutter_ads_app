import 'package:flutter/material.dart';
import 'package:flutter_ads_app/widgets/grid_ad_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                width: 55,
                padding: EdgeInsets.all(5),
                child: ClipOval(
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
          title: Text('Ads Listing'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: const Icon(Icons.camera_alt_outlined),
          onPressed: () {
            Navigator.pushNamed(context, 'createAd');
          },
        ),
        body: GridAdList());
  }
}
