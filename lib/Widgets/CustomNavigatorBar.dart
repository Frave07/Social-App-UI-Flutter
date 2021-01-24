import 'package:flutter/material.dart';


class CustomButtonNavigatorBar extends StatelessWidget
{

  final int index;

  const CustomButtonNavigatorBar({ this.index });

 @override
 Widget build(BuildContext context)
 {
    return Container(
        padding: EdgeInsets.only(top: 10.0),
        height: 70,
        color: Colors.white.withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            _IconNavigationBar(icon: Icons.home_filled, color: (index == 1) ? Color(0xff3b3b3b) : Colors.grey, text: 'Home' ,onPressed: () => Navigator.pushReplacementNamed(context, 'home')),
            _IconNavigationBar(icon: Icons.camera_alt_outlined, color: (index == 2) ? Color(0xff3b3b3b) : Colors.grey, text: 'Add New', ),
            _IconNavigationBar(icon: Icons.search, color: (index == 3) ? Color(0xff3b3b3b) : Colors.grey, text: 'Search',),
            _IconNavigationBar(icon: Icons.inbox_outlined, color: (index == 4) ? Color(0xff3b3b3b) :Colors.grey, text: 'Inbox', onPressed: () => Navigator.pushReplacementNamed(context, 'message')),
            _IconNavigationBar(icon: Icons.person_outline,color: (index==5) ? Color(0xff3b3b3b) : Colors.grey, text: 'Profile', onPressed: () => Navigator.pushReplacementNamed(context, 'perfil')),

          ],
        ),
    );
  }
}

class _IconNavigationBar extends StatelessWidget {

  final Color color;
  final String text;
  final IconData icon;
  final Function onPressed;

  const _IconNavigationBar({ this.color, this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Icon(icon, color: color),
          onTap: onPressed,
        ),
        Text(text, style: TextStyle(color: color))
      ],
    );
  }
}