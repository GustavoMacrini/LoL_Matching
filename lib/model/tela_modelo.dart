// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaModelo extends StatefulWidget {
  const TelaModelo({Key? key}) : super(key: key);

  @override
  State<TelaModelo> createState() => _TelaModeloState();
}

class _TelaModeloState extends State<TelaModelo> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromRGBO(248, 245, 240, 1),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue.shade200,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: 'Menu'),
          ],
          selectedItemColor: Colors.amber[800],
        ),
      );
    }

////////////////////////////
}



