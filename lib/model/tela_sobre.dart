// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:lol_matching/model/variaveis.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  var scaffoldKey = GlobalKey<ScaffoldState>();  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

    //APPBAR
    appBar: AppBar(
      title: Text('LoL Matching', style: TextStyle(color: secondaryColor),),
      centerTitle: true,
      backgroundColor: primaryColor,
      leading:
            IconButton(                         
            onPressed: (){ Navigator.pop(context);},
            icon: Icon(Icons.arrow_back, color: secondaryColor,),    
              iconSize: 30,
              //Deixa o efeito de clique praticamente invisivel
              splashRadius: 1,                                                             
            ),                    
    ),

    backgroundColor: secondaryColor,
    body: 
    
    Container(
      margin: EdgeInsets.fromLTRB(45, 30, 45, 30),
      child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          //TITULO DESENVOLVEDORES
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("DESENVOLVEDORES",
              style: TextStyle(
                color: primaryColor,
                fontSize: 20
              ),),

          ],),),
          

          //NOME E FOTO DESENVOLVEDORES
          Container(child: Column(children: [

            //AVATAR GUSTAVO
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [            
              CircleAvatar(
                backgroundColor: primaryColor,
                radius: 40,
                child: CircleAvatar(
                  radius: 36.0,
                  backgroundImage: AssetImage("lib/assets/devPic/foto_gustavo.jpeg"),
              ),
              ),
              
              Container(
                margin: EdgeInsets.only(left: 26),
                child: Text("Gustavo Godencio",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20
                ),  
              ),)

            ],),

            //AVATAR RAUL
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),

              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 40,
                  child: CircleAvatar(
                    radius: 36.0,
                    backgroundImage: AssetImage("lib/assets/devPic/foto_raul.jpg"),
                ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 26),
                  child: Text("Raul Bernardo",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20
                  ),  
                ),
                ),
              ]          
              ),),
          
        ],)),


        //TEXTO SOBRE O PROJETO
        Container(          
          margin: EdgeInsets.fromLTRB(0, 26, 0, 26),
          child:           
          Row(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Flexible(              
              child: Text("Desenvolvemos esse aplicativo formador de equipes com a intenção de melhorar a experiência de jogadores de League of Legends.",
            style: TextStyle(
                color: primaryColor,
                fontSize: 20
                
            ),
            textAlign: TextAlign.start,
            ),),

          ],),),

        
        //GIF DANCE KATARINA
        Gif(
          image: AssetImage("lib/assets/icons/dance_katarina.gif",), width:80, height: 80 ,
          autostart: Autostart.loop,
        )
    
        
        ]),      
    ),

    );
  }
}