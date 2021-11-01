import 'package:flutter/material.dart';
import 'package:flutter_ads_app/services/ads_service.dart';
import 'package:flutter_ads_app/widgets/grid_ad_item.dart';
import 'package:provider/provider.dart';

class GridAdList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final adsService = Provider.of<AdsService>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: adsService.adsList?.length == null
              ? 0
              : adsService.adsList?.length,
          shrinkWrap: true,
          primary: true,
          padding: const EdgeInsets.all(0.0),
          itemBuilder: (BuildContext ctx, idx) {
            String img = adsService.adsList![idx]['images'][0] as String;
            if (img.startsWith('http')) {
              img = adsService.adsList![idx]['images'][0];
            } else {
              img =
                  'https://ik.imagekit.io/g3yjnpywhqh/1635299635222_XVev9pI98.webp';
            }

            return Container(
              alignment: Alignment.center,
              child: GridAdItem(
                imgUrl: img,
                productTitle: adsService.adsList![idx]['title'],
                price: 45,
              ),
            );
          },
        ),
      ),
    );
  }
}
