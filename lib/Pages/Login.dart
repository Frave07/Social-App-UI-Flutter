import 'package:flutter/material.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


class LoginPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black87),
        actions: [
            IconButton(
              icon: Icon(Icons.more_vert, size: 20, color: Colors.black87),
              onPressed: (){}
            )
        ],
        brightness: Brightness.light,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          
          Text('Login', style: TextStyle(fontSize: 20)),
          SizedBox(height: 90),

          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Color(0xffC6CBD4)),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: Color(0xffC6CBD4)),
              suffixIcon: Icon(Icons.visibility, color: Color(0xffC6CBD4))
            ),
          ),

          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff632CF8),
                  Color(0xff1b80f1),
                ]
              )
            ),
            child: FlatButton(
              child: Text('Login', style: TextStyle(fontSize: 17, color: Colors.white)),
              onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
            )
          ),

          SizedBox(height: 10),
          FlatButton(
            child: Text('Forgot your password?', style: TextStyle(fontSize: 17, color: Colors.black26)),
            onPressed: (){},
          ),
          SizedBox(height: 190),
          Align(
            alignment: Alignment.center,
            child: Text('Dont have an Account? ', style: TextStyle(fontSize: 17, color: Colors.black26))
          ),
          FlatButton(
            child: Text('Register Now', style: TextStyle(fontSize: 19, color: Colors.black)),
            onPressed: (){},
          ),
        ],
      )
    );
  }
}