import 'package:flutter/material.dart';

class CreateAd extends StatelessWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Ad'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  print('Open Camera');
                },
                child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_a_photo_outlined,
                            size: 50,
                          ),
                          Text('Tap to upload')
                        ],
                      ),
                    ))),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintText: 'Title',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintText: 'Price',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintText: 'Contact Number',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintText: 'Description',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    child: Text(
                      'Submit Ad',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(double.infinity, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
