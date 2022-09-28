// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'new_page.dart';

class TelaModelo extends StatefulWidget {
  const TelaModelo({Key? key}) : super(key: key);

  @override
  State<TelaModelo> createState() => _TelaModeloState();
}

class _TelaModeloState extends State<TelaModelo> {
  int _indiceAtual = 0; // Variável para controlar o índice das telas
  final List<Widget> _telas = [
    NewPageScreen("Item 1"),
    NewPageScreen("Item 2"),
    NewPageScreen("Item 3"),
    NewPageScreen("Item 4"),
    NewPageScreen("Item 5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "3",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "4",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.back_hand),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            _indiceAtual = index;
          });
        },
        selectedItemColor: Colors.amber,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        //selectedLabelStyle: ,
        
      ),
    );
  }

////////////////////////////
}
