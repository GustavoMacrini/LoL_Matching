// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lol_matching/view/tela_equipe.dart';
import 'package:lol_matching/view/tela_perfil.dart';
import 'package:lol_matching/view/tela_pesquisa.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'tela_home.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  int _indiceAtual = 0; // Variável para controlar o índice das telas
  final List<Widget> _telas = [
    TelaHome(),
    TelaPesquisa(),
    TelaEquipe(),    
    TelaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: 
      BottomNavigationBar(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        items: [

          //HOME
          BottomNavigationBarItem(            
            icon: Container(
              width: 30,
              height: 30,
              child: Icon(Icons.home),),
            activeIcon: Container(
              width: 30,
              height: 30,
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
              width: 30,
              height: 30,
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
              width: 30,
              height: 26,
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 90, 4, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child:ImageIcon(AssetImage("lib/assets/navbar/sword.png",))),
            label: "",
          ),

          //PERFIL
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Container(
              width: 30,
              height: 30,
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
                
      ),
    );
  }
}
