// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:lol_matching/model/widgets/equipe_widget.dart';
import 'package:lol_matching/model/variaveis.dart';

class TelaEquipe extends StatefulWidget {
  const TelaEquipe({Key? key}) : super(key: key);

  @override
  State<TelaEquipe> createState() => _TelaEquipeState();
}

class _TelaEquipeState extends State<TelaEquipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body:       
      Container(        
        margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,          
          children: [


            //SUA EQUIPE TEXTO
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sua Equipe",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 24
                  ),)                  
              ],),
            ),

            //MEMBROS EQUIPE
            Container(              
              child: Column(children: [
              EquipeWidget("Agente Pleakley", "top", 685),
              EquipeWidget("Kindred Kawaii", "jungle", 4650),
              EquipeWidget("Madeira Gustavo", "mid", 3248),
              EquipeWidget("DrHansChucrute", "adc", 3249),
              EquipeWidget("Chwn", "sup", 1234),
              ]),
            ),


            //BOTÃO DESFAZER EQUIPE
            Container(
              width: 180,
              height: 40,
              child: 
                  ElevatedButton(                    
                    onPressed: (){},                   
                    child: Text("Desfazer Equipe",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,                    
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor, 
                  ),
                  ),                  
                )

          ],),),

    );
  }
}