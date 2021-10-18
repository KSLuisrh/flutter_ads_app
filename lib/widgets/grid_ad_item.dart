import 'package:flutter/material.dart';

class GridAdItem extends StatelessWidget {
  const GridAdItem(
      {Key? key,
      required this.imgUrl,
      required this.price,
      required this.productTitle})
      : super(key: key);
  final String imgUrl;
  final int price;
  final String productTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          // alignment: Alignment.center,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              "${this.imgUrl}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            color: Colors.black.withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "${this.productTitle}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "\$${this.price}",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
