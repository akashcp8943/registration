import 'package:flutter/material.dart';

class Listvi extends StatefulWidget {
  const Listvi({super.key});

  @override
  State<Listvi> createState() => _ListviState();
}

class _ListviState extends State<Listvi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {

        return ListTile(
          title: Text("name"),
          subtitle: Text(" "),
          leading:Container() ,
          trailing: Icon(Icons.access_time) ,

        );

      },)
         //Column(

    );
  }
}
