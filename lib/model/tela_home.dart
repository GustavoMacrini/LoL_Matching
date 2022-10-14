// ignore_for_file: prefer_const_constructors
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/historico_widget.dart';

final lista = <HistoricoWidget> [
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),
  HistoricoWidget(),  
  ];

class TelaHome extends StatefulWidget {
  
  const TelaHome({Key? key}) : super(key: key);

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

var nickname = "Kindred Kawaii";
var primaryColor = Color.fromRGBO(222, 165, 71, 1);

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(4, 32, 40, 1),
      body: 
      Container(        
        margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child:
        Column(          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Olá, ${nickname}", 
                style: TextStyle(color: primaryColor,
                fontSize: 20,
                ),                
                ),


                //Notificação
                Container(                
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  ),                                             
                child: IconButton(
                  icon: Icon(Icons.notifications_outlined ), 
                  onPressed: (){
                    //SNACKBAR
                    final snackBar = SnackBar(
                  content: const Text('Não há notificações'),
                  duration: Duration(seconds: 2, milliseconds: 500),
                  action: SnackBarAction(
                    label: "Fechar",              
                    onPressed: () {                
                    },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  color: Colors.black, 
                  ),                                           
                ),                                
              ],
            ),

            //TEXTO SUAS ULTIMAS PARTIDAS
            Container(
              margin: EdgeInsets.fromLTRB(0, 70, 0, 10),
              child:             
              Row(
              children: [
                Text("Suas últimas partidas:",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20
                ),
                ),
              ],
            ),),



            //HISTORICO
            Expanded(
              flex: 10,
              child: ListView.separated(                            
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  color: secondaryColor,
                  child: lista[index],
                );
              }, 
              itemCount: lista.length, 
              separatorBuilder: (BuildContext context, int index) => const Divider(),
                     
              
              ),
            ),

              ],
        ),
      ),

      
    );
  }
}