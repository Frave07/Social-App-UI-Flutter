import 'package:flutter/material.dart';
import 'package:social/Widgets/CustomNavigatorBar.dart';

import 'package:social/Widgets/Historias.dart';
import 'package:social/Widgets/Post.dart';


class HomePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20.0, top: 20.0),
          children: [

            _HistoriasHome(),

            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recently Added', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87)),
                  Icon(Icons.filter_list, color: Color(0xff8D8C8C)),
                ],
              ),
            ),

            SizedBox(height: 15),

            Post(name: 'Arthure Shel', perfil: 'h1.png', photo: 'p5.jpg', time: '2h ago' ),
            Post(name: 'Frave Programmer', perfil: 'h2.png', photo: 'p3.jpg', time: '2h ago' ),
            Post(name: 'Space ', perfil: 'h3.png', photo: 'p4.jpg', time: '2h ago' ),
            Post(name: 'Arthure Shel', perfil: 'h1.png', photo: 'p5.jpg', time: '2h ago' ),

          ],
        ),
      ),
      bottomNavigationBar: CustomButtonNavigatorBar(index: 1)
     );
  }
}



class _HistoriasHome extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [

            Historias(name: 'New',),
            Historias(name: 'Arthur Shelby', avatar: true, photo: 'Assets/h1.png'),
            Historias(name: 'Frave', avatar: true, photo: 'Assets/h2.png'),
            Historias(name: 'Frave', avatar: true, photo: 'Assets/h2.png'),
            Historias(name: 'Space', avatar: true, photo: 'Assets/h3.png'),
            Historias(name: 'Arthur Shelby', avatar: true, photo: 'Assets/h1.png'),
        ],
      ),
    );
  }
}