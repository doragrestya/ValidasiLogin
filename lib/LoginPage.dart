import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  var _obSecure = true;

  void onHideSecure() {
    if (_obSecure == true) {
      setState(() {
        _obSecure = false;
      });
    } else {
      setState(() {
        _obSecure = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bgg.jpg'), fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 120, left: 10),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 50),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 10),
                              alignment: Alignment.center,
                              height: 45,
                              width: 55,
                              color: Colors.grey,
                              child: Text(
                                'L',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 10),
                              alignment: Alignment.center,
                              height: 45,
                              width: 55,
                              color: Colors.yellow,
                              child: Text(
                                'O',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 10),
                              alignment: Alignment.center,
                              height: 45,
                              width: 55,
                              color: Colors.blue,
                              child: Text(
                                'G',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 10),
                              alignment: Alignment.center,
                              height: 45,
                              width: 55,
                              color: Colors.pinkAccent,
                              child: Text(
                                'I',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 10),
                              alignment: Alignment.center,
                              height: 45,
                              width: 55,
                              color: Colors.orange,
                              child: Text(
                                'N',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 80),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    controller: username,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Username',
                                      prefixIcon: Icon(
                                        Icons.person,
                                        size: 30,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      controller: password,
                                      obscureText: _obSecure,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          size: 30,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _obSecure
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            onHideSecure();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 160, top: 10),
                                    child: FlatButton(
                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 320,
                                      child: RaisedButton(
                                        onPressed: () {
                                          if (username.text == 'admin' &&
                                              password.text == 'admin') {
                                            print('Success Login');
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                            user: username.text,
                                                            pass: password
                                                                .text)));
                                          } else {
                                            print('Failed Login');
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: Text(
                                                      'ERROR!!!',textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          color: Colors.red),
                                                    ),
                                                        )
                                                      ],
                                                    ),
                                                    content: Container(
                                                      height: 20,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(
                                                              'Username dan Password Anda Salah!!!')
                                                        ],
                                                      ),
                                                    ),
                                                    actions: <Widget>[
                                                      RaisedButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        child: Text('Tutup'), color: Colors.yellow,
                                                      )
                                                    ],
                                                  );
                                                });
                                          }
                                        },
                                        color: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




