// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lol_matching/model/tela_modelo.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/campo_texto.dart';

final lista = <CampoTextoWidget> [
  CampoTextoWidget("Email", false),
  CampoTextoWidget("Nome", false),
  CampoTextoWidget("Senha", true),
  CampoTextoWidget("Confirar senha", true),
];

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

            //EMAIL
            CampoTextoWidget("Email", false),

            //NOME
            CampoTextoWidget("Nome", false),      

            //SENHA
            Container(
              //margin: EdgeInsets.fromLTRB(0, 36, 0, 36),
              child: CampoTextoWidget("Senha", true),
            ),

            //CONFIRMAR SENHA
            CampoTextoWidget("Confirmar senha", true), 
  
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
          final snackBar = SnackBar(
            content: const Text('Bem Vindo!'),
            duration: Duration(seconds: 2, milliseconds: 500),
            action: SnackBarAction(
              label: "Fechar",              
              onPressed: () {                
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
}