// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lol_matching/main.dart';
import 'package:lol_matching/model/tela_login.dart';



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
  var primaryColor = Color.fromRGBO(222, 165, 71, 1);
  var secondaryColor = Color.fromRGBO(4, 32, 40, 1);
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      //APPBAR INVISIVEL
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(30.0),        
        child:       
        AppBar(
          backgroundColor: Colors.transparent,          
          elevation: 0,
          leading:
            IconButton(            
            onPressed: (){scaffoldKey.currentState?.openDrawer();},
            icon: Icon(Icons.menu, color: primaryColor,),    
              iconSize: 30,
              //Deixa o efeito de clique praticamente invisivel
              splashRadius: 1,                                               
            ),                      
          actions: [  
          ],
          
        ),
      ),

      
      //DRAWER
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.5,
        backgroundColor: secondaryColor,                      
        child: 
        Container(          
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //EXIBIR DISCORD
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check_box_outline_blank, 
                    color: primaryColor,),
                  title: Text("Exibir Discord", 
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                    ),),
                ),


                //SOBRE
                ListTile(
                  leading: Icon(Icons.info_outline,
                    color: primaryColor,),
                  title: Text("Sobre nós",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 14
                    ),),

                ),
              ],
            ),

            //LOGOUT
            ListTile(
              
              leading: Icon(Icons.exit_to_app,
                color: primaryColor,
                ),
              title: Text("Logout",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                ),),
                
            ),

        ]),

        )
        ),            


      //BODY
      backgroundColor: secondaryColor,
      body:       
      Container(
        //margin: EdgeInsets.only(top: 30),
        child:         
        Column(
          
          children: [                      

            //FOTO PERFIL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [                  
                  //Borda
                  CircleAvatar(
                    radius: 75.0,
                    backgroundColor: primaryColor,
                  child: 
                  //Foto
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage:
                    NetworkImage("https://ddragon.leagueoflegends.com/cdn/12.19.1/img/profileicon/4650.png"),
                    backgroundColor: Colors.transparent,
                  ),
              )
              ],
            ),

            //NOME USUARIO
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 2),
              child: 
              Row(
              mainAxisAlignment: MainAxisAlignment.center,            
              children: [
                Text(username,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 30,
                ),
                ),
              ],
            ),

            ),

            //DISCORD USUARIO
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(discord,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                ),
                ),
                Icon(
                  Icons.edit,
                  color: primaryColor,
                  
                ),
              ],
            ),


            //MAINS
            Container(
              margin: EdgeInsets.fromLTRB(0, 45, 0, 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mains:",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: 
                    Image(image: NetworkImage("http://ddragon.leagueoflegends.com/cdn/12.19.1/img/champion/Kindred.png"),
                    height: 45, 
                    width: 45,
                  ),
                  ),
                  Image(image: NetworkImage("http://ddragon.leagueoflegends.com/cdn/12.19.1/img/champion/Syndra.png"),
                  height: 45,
                  width: 45,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image(image: NetworkImage("http://ddragon.leagueoflegends.com/cdn/12.19.1/img/champion/Khazix.png"),
                    height: 45,
                    width: 45,
                  )
                  ),
                  Icon(Icons.edit, 
                  color: primaryColor,
                  )
                ],
              ),
            ),
          

            // RANKING
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,                  
                  children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    width: 512 * 0.24, 
                    height: 585 * 0.24,
                    child:                 
                    Image(image: AssetImage("lib/assets/rank/Emblem_Challenger.png",),)
                  ,),

                  Column(
                    children: [
                      Text(elo, 
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        ),),

                      Text("${pdl} PDL", 
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        ),),
                    ],
                  ),
                  
                ],),



                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,                  
                  children: [
                  Text("Taxa de vitórias: ${taxaVitoria}",
                  style: TextStyle(
                    color: 
                    primaryColor,
                    fontSize: 20,
                  ),)
                ],),
                ),
              ],
            ),


          ]),
      ),
    );
  }
}