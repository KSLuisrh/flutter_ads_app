import 'package:flutter/material.dart';

class ListMyAds extends StatelessWidget {
  const ListMyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _entries = <String>[
      'item',
      'item',
      'item Royal',
      'item',
      'item',
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, idx) {
              return Container(
                margin: EdgeInsets.only(top: 15, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1486325212027-8081e485255e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Text(
                                      'Live Session',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Flutter live session',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '06-11-2021 ',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '7:30 - 8:30',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Container(
                  height: 0,
                  width: 0,
                ),
            itemCount: _entries.length),
      ),
    );
  }
}
