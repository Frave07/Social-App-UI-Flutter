import 'package:flutter/material.dart';


class Historias extends StatelessWidget
{
  final String name;
  final String photo;
  final bool avatar;

  const Historias({ @required this.name, this.photo, this.avatar = false });

 @override
 Widget build(BuildContext context)
 {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [

          Stack(
            children: [

              Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xff0057FF),
                    shape: BoxShape.circle
                  ),
              ),

              Positioned(
                right: 2.5,
                top: 2.5,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),
              ),

              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xff0057FF),
                    shape: BoxShape.circle
                  ),
                  child: ( this.avatar ) 
                      ? CircleAvatar(
                          backgroundImage: AssetImage( this.photo ),
                        )
                      : IconButton(
                          icon: Icon(Icons.add, color: Colors.white), 
                          onPressed: (){}
                        )
                ),
              ), 
            ],
          ),
          SizedBox(height: 10),
          Text( this.name )
        ],
      ),
    );
  }
}