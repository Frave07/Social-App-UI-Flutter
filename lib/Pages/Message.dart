import 'package:flutter/material.dart';
import 'package:social/Models/Contacts.dart';
import 'package:social/Widgets/CirculoMensaje.dart';
import 'package:social/Widgets/CustomNavigatorBar.dart';


class MessagesPage extends StatefulWidget
{

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> 
{

  List<Contacts> contacts = [
      Contacts(name: 'Maritza Ave', photo: 'Assets/h4.png', menssage: 'Send you a photo', time: '24m ago'),
      Contacts(name: 'Frave Programmer', photo: 'Assets/h2.png', menssage: 'Send you a photo', time: '24m ago'),
      Contacts(name: 'Frank', photo: 'Assets/h5.png', menssage: 'Send you a photo', time: '24m ago'),
      Contacts(name: 'Frave Programmer', photo: 'Assets/h2.png', menssage: 'Send you a photo', time: '24m ago'),
  ];

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Message', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10)
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (_, i) {
            return ListTile(
              leading: CirculoChat(photo: contacts[i].photo, estado: true,),
              title: Text(contacts[i].name),
              subtitle: Text(contacts[i].menssage, style: TextStyle(color: Colors.grey)),
              trailing: Text(contacts[i].time, style: TextStyle(color: Colors.grey)),
            );
        },
      ),
      bottomNavigationBar: CustomButtonNavigatorBar(index: 4),
     );
  }
}