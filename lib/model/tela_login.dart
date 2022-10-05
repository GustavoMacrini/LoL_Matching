// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:html';

import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(4, 32, 40, 1),
      body: 
      
        Container(
        margin: EdgeInsets.fromLTRB(25, 6, 25, 0),          
        child:        
        Column(                  
          children: [ 

          //TITULO
          Container(
            margin: EdgeInsets.fromLTRB(0, 27, 0, 35),
            child:
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LoL Matching", 
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(222, 165, 71, 1)
                ),
              ),
            ],
            ), 
            ),


            // ARRUMAR ISSO TA MT FEIO
            Container(
              margin: EdgeInsets.only(bottom: 36),
              child: campoTexto("Login", false),
            ),
          
            campoTexto("Senha", true),
            //FIM DO ARRUMAR

            //CRIAR CONTA
            Container(
              margin: EdgeInsets.only(top: 10),
              child: 
                Row(children: [
                  TextButton(
                  onPressed: (){}, 
                  child: 
                  Text(
                    "Criar conta",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(13, 196, 217, 1),
                    ),
                  ),
                ),
              ],
              ),
            ),
            

            //BOTÃO RIOT
            Container(
              
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10)),
              
              width: 100, 
              height: 100,               
              margin: EdgeInsets.fromLTRB(0, 30, 0, 30),              
              child: InkWell(
              customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),),
              onTap: (){},
                            
              child: Ink.image(
                
                image: NetworkImage("data:image/png;base64,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"),  
                //width: 100, 
                //height: 100,  
                             
                ),
                 
               ),
              ),
              

            botao("ENTRAR"),
  
        ],
        ),
        ),
      );
  }


  botao(titulo){
    return Container(
      width: 148,
      height: 58,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(222, 165, 71, 1),        
        ),
      onPressed: (){}, 
      child: 
      Text(
        titulo, 
        style: TextStyle(
          color: Color.fromRGBO(4, 32, 40, 1), 
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
              color: Color.fromRGBO(222, 165, 71, 1),
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