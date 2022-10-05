// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key? key}) : super(key: key);

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {      
  var username = "Kindred Kawaii";
  var discord = "usu.discord#123";
  var elo = "Desafiante";
  var pdl = "487";
  var taxaVitoria = "48%";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(4, 32, 40, 1),
      body: 
      Container(
        child: 
        Column(
          children: [

            //FOTO PERFIL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://i.redd.it/csu0thvj23a51.jpg"),
              ],
            ),

            //NOME USUARIO
            Row(
              mainAxisAlignment: MainAxisAlignment.center,            
              children: [
                Text(username,
                style: TextStyle(
                  color: Color.fromRGBO(222, 165, 71, 1),
                  fontSize: 20,
                ),
                ),
              ],
            ),

            //DISCORD USUARIO
            Row(
              children: [
                Text(discord,
                style: TextStyle(
                  color: Color.fromRGBO(222, 165, 71, 1),
                  fontSize: 14,
                ),
                ),
                Icon(
                  Icons.edit,
                  color: Color.fromRGBO(222, 165, 71, 1),
                  
                ),
              ],
            ),

          ]),
      ),
    );
  }
}