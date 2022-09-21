// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaModelo extends StatefulWidget {
  const TelaModelo({Key? key}) : super(key: key);

  @override
  State<TelaModelo> createState() => _TelaModeloState();
}

class _TelaModeloState extends State<TelaModelo> {

@override
void initState(){
  super.initState();
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
  ]);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248,245,240,1),
      body: Container(
        width: MediaQuery.of(context).size.width*0.15,
        child: Drawer(
          backgroundColor: Color.fromRGBO(249, 241, 227, 1),
          child: Column(
            children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
            Text('Item 4'),
          ],),

        ),
      ),
    );
  }
}
