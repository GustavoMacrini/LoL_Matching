import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/filtro_widget_champ.dart';
import 'package:lol_matching/model/widgets/filtro_widget_tipo.dart';

class TelaPesquisa extends StatefulWidget {
   
      
  TelaPesquisa({Key? key}) : super(key: key);

  @override
  State<TelaPesquisa> createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: secondaryColor,
      body:
      
      Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(          
          children: [

            //FILTROS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    DropPageChamp(),
                    DropPageFiltro(),
                  ],
                ),
              ],
            ),

            //BOTAO
            botao("PESQUISAR"),


        ]),
      ),
    );    
  }

  botao(titulo){
    return Container(
      width: 120,
      height: 38,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,        
        ),
      onPressed: (){               
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