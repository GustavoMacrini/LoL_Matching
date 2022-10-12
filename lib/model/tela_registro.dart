// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lol_matching/model/tela_modelo.dart';
import 'package:lol_matching/model/variaveis.dart';

class TelaRegistro extends StatefulWidget {
  const TelaRegistro({Key? key}) : super(key: key);

  @override
  State<TelaRegistro> createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //APPBAR INVISIVEL
      appBar:           
      PreferredSize(
        preferredSize: Size.fromHeight(60.0),        
        child:       
        AppBar(
          title: 
          Text(
                "LoL Matching", 
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            centerTitle: true,
          backgroundColor: Colors.transparent,          
          elevation: 0,
          leading:
            IconButton(            
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: primaryColor,),    
              iconSize: 30,
              //Deixa o efeito de clique praticamente invisivel
              splashRadius: 1,                                               
            ),                      
          actions: [  
          ],
          
        ),
      ),


      backgroundColor: secondaryColor,
      body: 
      
        Container(
        margin: EdgeInsets.fromLTRB(26, 40, 26, 80),          
        child:        
        Column(   
          mainAxisAlignment: MainAxisAlignment.spaceBetween,               
          children: [ 

            //LOGIN
            campoTexto("Login", false),
            
          
            //SENHA
            Container(
              //margin: EdgeInsets.fromLTRB(0, 36, 0, 36),
              child: campoTexto("Senha", true),
            ),

            //CONFIRMAR SENHA
            campoTexto("Confirmar senha", true), 

            botao("CRIAR"),
  
        ],
        ),
        ),
      );
  }


  //BOTÃO TROCA DE CONTEXTO
  botao(titulo){
      return Container(
        width: 148,
        height: 58,
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,        
          ),
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TelaModelo()));
        }, 
        child: 
        Text(
          titulo, 
          style: TextStyle(
            color: secondaryColor, 
            fontSize: 16
            ),
        ),
        ),
        );
    }

  


  campoTexto(title, bool obscure) {
    return Container(
      child: 
      Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,
             style: TextStyle(
              fontSize: 20,
              color: primaryColor,
              ),
            ),
          ],
          ),

        TextFormField(        
        style: 
        TextStyle(
          fontSize: 28,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: 
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),          
        ),
        obscureText: obscure, 
      ),
      ],
      ),
      );
  }
}