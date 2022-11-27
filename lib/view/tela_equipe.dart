// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:lol_matching/model/widgets/equipe_widget.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/view/equipe_exibir.dart';

import '../controller/equipe_controller.dart';

class TelaEquipe extends StatefulWidget {
  const TelaEquipe({Key? key}) : super(key: key);

  @override
  State<TelaEquipe> createState() => _TelaEquipeState();
}


class _TelaEquipeState extends State<TelaEquipe> {

  var listaUsuarios;

  @override
  void initState(){
    super.initState();
    listaUsuarios = EquipeController().retornaEquipe();
  }
  
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
            // Container(              
            //   child: //Column(children: [
            //   // EquipeWidget("Kindred Kawaii", "jungle", 4650, true),
            //   // EquipeWidget("Agente Pleakley", "top", "aaaa", false),
            //   // EquipeWidget("Madeira Gustavo", "mid", 3248, false),
            //   // EquipeWidget("DrHansChucrute", "adc", 3249, false),
            //   // EquipeWidget("Chwn", "sup", 1234, false),
            //   // ]),

              
            // ),

              EquipeExibir(listaUsuarios),

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