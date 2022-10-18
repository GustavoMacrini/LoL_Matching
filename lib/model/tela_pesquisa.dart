import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/filtro_widget_champ.dart';
import 'package:lol_matching/model/widgets/filtro_widget_tipo.dart';
import 'package:lol_matching/model/widgets/usuarios_widget.dart';

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
        margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(          
          children: [

            //FILTROS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    DropPageChamp(),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: DropPageFiltro(),)
                  ],
                ),
              ],
            ),

            //BOTAO
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 30),  
              child: botao("PESQUISAR"),
            ),

            //LINHA DE DIVISAO
            Divider(
              color: primaryColor,
              thickness: 2,
            ),

            UsuarioWidget(4568, "Kindred Kawaii", 536000),
            UsuarioWidget(4568, "Kindred Kawaii", 536000),
            UsuarioWidget(4568, "Kindred Kawaii", 536000),


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