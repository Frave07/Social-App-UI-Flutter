import 'package:flutter/material.dart';
import 'package:social/Widgets/CustomNavigatorBar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PerfilPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        actions: [
          Icon(Icons.more_vert, color: Colors.black,)
        ],
        brightness: Brightness.light,
        elevation: 0.0,
      ),
      body: ListView(
        children: [

            _NamePerfil(),
            SizedBox(height: 40),

            _DetailsFollows(),
            SizedBox(height: 30),

            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => new Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: new Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text('$index'),
                      ),
                    )),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 7.0,
                crossAxisSpacing: 4.0,
              ),
            )

        ],
      ),
      bottomNavigationBar: CustomButtonNavigatorBar(index: 5),
     );
  }
}

class _DetailsFollows extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('30K', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             Text('FANS', style: TextStyle(fontSize: 13)),
           ],
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('666', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             Text('FOLLOWING', style: TextStyle(fontSize: 13)),
           ],
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('2121', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             Text('POSTS', style: TextStyle(fontSize: 13)),
           ],
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
             Text('STORIES', style: TextStyle(fontSize: 13)),
           ],
         )
      ],
    );
  }
}

class _NamePerfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        Row(children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('Assets/h2.png'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Frave Programmer', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Chiclayo, PE',style: TextStyle(color: Colors.grey)),
          ],)
        ]),

        Container(
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.grey[200], spreadRadius: 5)
            ]
          ),
          child: FlatButton(
            onPressed: (){},
            child: Text('Follow',style: TextStyle(color: Colors.black))
          ),
        )
      ],
    );
  }
}