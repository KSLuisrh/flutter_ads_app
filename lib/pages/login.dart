import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Container(
                child: Image.network(
                  'https://images.unsplash.com/photo-1486325212027-8081e485255e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80',
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          hintText: 'Email Adress',
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
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
                        'Login',
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
                    GestureDetector(
                      child: Text(
                        "Don't have any account?",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        print('Register form');
                        FocusManager.instance.primaryFocus?.unfocus();

                        Navigator.pushNamed(context, 'register');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
