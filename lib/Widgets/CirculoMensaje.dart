import 'package:flutter/material.dart';


class CirculoChat extends StatelessWidget
{

  final String photo;
  final bool estado;

  const CirculoChat({  @required this.estado, this.photo});

 @override
 Widget build(BuildContext context)
 {
    return Stack(
      children: [

        Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xff4BB17B),
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(photo),
            ),
        ),

        Positioned(
          right: 0,
          child: Container(
            width: 13,
            height: 13,
            decoration: BoxDecoration(
              color: Colors.white ,
              shape: BoxShape.circle
            ),
          ),
        ),

        Positioned(
          right: 0,
          child: Container(
            width: 11,
            height: 11,
            decoration: BoxDecoration(
              color: ( estado ) ? Colors.blue : Colors.red ,
              shape: BoxShape.circle
            ),
          ),
        ),
        
      ],
    );
  }
}