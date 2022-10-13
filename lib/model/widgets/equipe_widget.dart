// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';


class EquipeWidget extends StatelessWidget {

  final String nick;
  final String lane;

  const EquipeWidget(
    this.nick, this.lane,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
 

      decoration: BoxDecoration(
        color: secondaryColor, 
      ),    
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          
          //CONTAINER ICONE E NOME
          Container(
            child: Row(
              children: [
              //Borda
              CircleAvatar(
                radius: 32.0,
                backgroundColor: Color.fromRGBO(222, 165, 71, 1),
                child: 
                //Foto
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                  NetworkImage("https://ddragon.leagueoflegends.com/cdn/12.19.1/img/profileicon/4650.png"),
                  backgroundColor: Colors.transparent,
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(nick, 
                style: TextStyle(
                color: Color.fromRGBO(222, 165, 71, 1),
                fontSize: 16,
                )))
              ],
            ),
          ),
          
        //CONTAINER LANE E BOTAO
        Container(
          child:
          Row(children: [            
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset('lib/assets/lanes/$lane.png',),height: 26, width: 26,),
            
            //BOTÃO            
            Icon(Icons.close, color: Color.fromRGBO(222, 165, 71, 1),)
            
          ],)
        ),

      ],)
    );
  }
  }
