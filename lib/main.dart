import 'package:flutter/material.dart';

import 'package:social/Pages/Home.dart';
import 'package:social/Pages/Login.dart';
import 'package:social/Pages/Message.dart';
import 'package:social/Pages/Perfil.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      initialRoute: 'login',
      routes: {
        'login'  : (_) => LoginPage(),
        'home'   : (_) => HomePage(),
        'message': (_) => MessagesPage(),
        'perfil' : (_) => PerfilPage(),
      },
    );
  }
}