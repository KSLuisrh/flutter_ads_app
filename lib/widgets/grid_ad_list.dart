import 'package:flutter/material.dart';
import 'package:flutter_ads_app/widgets/grid_ad_item.dart';

class GridAdList extends StatelessWidget {
  const GridAdList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: GridView.count(
          shrinkWrap: true,
          primary: true,
          physics: new NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            GridAdItem(
              imgUrl:
                  'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_Battlefield2042_DICE_S1_2560x1440-36f16374c9c29a18a46872795b483d72',
              productTitle: 'Battlefiled 2042',
              price: 45,
            ),
            GridAdItem(
              imgUrl:
                  'https://www.gamersrd.com/wp-content/uploads/2020/06/maxresdefault-22-e1591913106876.jpg',
              productTitle: 'Kena',
              price: 60,
            ),
            GridAdItem(
              imgUrl:
                  'https://as.com/meristation/imagenes/2021/09/01/noticias/1630484017_494506_1630484120_noticia_normal_recorte1.jpg',
              productTitle: 'Genshin Impact',
              price: 10,
            ),
            GridAdItem(
              imgUrl:
                  'https://www.somosxbox.com/wp-content/uploads/2021/08/zf5pkugg3vg71.jpg',
              productTitle: 'Call Of Duty',
              price: 45,
            ),
            // GridAdItem(),
            // GridAdItem(),
          ],
        ),
      ),
    );
  }
}
