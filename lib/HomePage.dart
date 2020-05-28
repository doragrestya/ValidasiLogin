import 'package:flutter/material.dart';
import 'LoginPage.dart';

class HomePage extends StatelessWidget {
  final String user, pass;

  HomePage({this.user, this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/bgg.jpg'), fit: BoxFit.cover
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Column(
                    children: <Widget>[
                      Text('Your Username : $user', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.red),),
                      Padding(padding: EdgeInsets.only(top: 20),),
                      Text('Your Password : $pass', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white)),
                      Padding(padding: EdgeInsets.only(top: 20),),
                      IconButton(icon: Icon(Icons.exit_to_app, size: 40, color: Colors.blue,), onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },),
                      Text('Sign Out', style: TextStyle(color: Colors.blue, fontSize: 12),)
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}