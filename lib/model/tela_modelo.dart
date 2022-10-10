// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lol_matching/model/tela_perfil.dart';

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
    TelaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: 
      BottomNavigationBar(
        backgroundColor: Color.fromRGBO(222, 165, 71, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        items: [

          //HOME
          BottomNavigationBarItem(            
            icon: Icon(Icons.home),
            activeIcon: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.home),),
            label: "",            
          ),

          //SEARCH
          BottomNavigationBarItem(            
            icon: Icon(Icons.search),
            activeIcon: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.search),),
            label: "",
          ),

          //SWORD
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("lib/assets/navbar/sword.png")),
            activeIcon: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child:ImageIcon(AssetImage("lib/assets/navbar/sword.png"))),
            label: "",
          ),

          //CHAT
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            activeIcon: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.chat_outlined),),
            label: "",
          ),

          //PERFIL
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.person),),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            _indiceAtual = index;
          });
        },
        selectedItemColor: Colors.black,        
        showSelectedLabels: false,
        showUnselectedLabels: false,     
        //selectedLabelStyle:  ,
        
        
      ),
    );
  }

////////////////////////////
}
