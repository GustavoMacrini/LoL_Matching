// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';

class UsuarioWidget extends StatelessWidget {
  final int icon;
  final String nickname;
  final int maestria;
  const UsuarioWidget(
    this.icon, this.nickname, this.maestria,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          //CONTAINER ICONE USUARIO
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //Borda
              CircleAvatar(
                radius: 32.0,
                backgroundColor: primaryColor,
                child: 
                //Foto
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                  NetworkImage("https://ddragon.leagueoflegends.com/cdn/12.19.1/img/profileicon/$icon.png"),
                  backgroundColor: Colors.transparent,
                ),
              ),]
            )            
          ),


          //USUARIO E MAESTRIA
          Column(
            children: [
              //NICK
              Text(nickname, 
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
              ),),
              
              //MAESTRIA
              Row(   
                mainAxisAlignment: MainAxisAlignment.start,                             
                children: [
                  Image(image: AssetImage("./lib/assets/maestria/maestria7.png"), 
                    height: 20,
                    width: 20,
                  ),

                  Text("$maestria",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16
                    ),
                  )
                ],)
          ],),

          //ADICIONAR
          Icon(Icons.person_add_rounded,          
            color: primaryColor,
            size: 40,
          )

        ],),
    );
  }
}