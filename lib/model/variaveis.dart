import 'package:flutter/material.dart';

var primaryColor = Color.fromRGBO(222, 165, 71, 1);
var secondaryColor = Color.fromRGBO(4, 32, 40, 1);
var username = "Kindred Kawaii";
var discord = "usu.discord#123";
var elo = "Desafiante";
var pdl = "487";
var taxaVitoria = "48%";


//BOTÃO TROCA DE CONTEXTO
botao(context_button, titulo,  proximaTela){
    return Container(
      width: 148,
      height: 58,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,        
        ),
      onPressed: (){
        Navigator.of(context_button).push(MaterialPageRoute(builder: (context) => proximaTela));
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


