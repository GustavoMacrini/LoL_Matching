// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';

class HistoricoWidget extends StatelessWidget {
  
  final String champ;
  final String lane;
  final String kda;
  final int farm;
  final bool vitoria;

  const HistoricoWidget(
    this.champ, this.lane, this.kda, this.farm, this.vitoria,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: 
        Row(      
          mainAxisAlignment: MainAxisAlignment.spaceBetween,    
          children: [

            
            Row(
              children: [
                //CAMPEAO
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: 
                  Image(image: NetworkImage("http://ddragon.leagueoflegends.com/cdn/12.19.1/img/champion/$champ.png"), width: 40, height: 40,),
                ),

                //TEXTO KDA E VITORIA
                Column(              
                  children: [
                    Text("KDA:",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize:20 
                      ),
                    ),
                    
                    //CONDICIONAL PARA MOSTRAR VITORIA OU DERROTA
                    vitoria ? Text("Vitória",                   
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20
                    ),) : Text("Derrota", 
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20
                            ),)

                ],),
              ],
            ),

            //KDA NUM E FARM
            Row(
              children: [
                Column(
                  children: [
                    //KDA
                    Text(kda, 
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20
                      ),),

                    //FARM                
                    Row(
                      children: [
                      Text("$farm", 
                        style: TextStyle(
                          color: Color.fromRGBO(151, 135, 93, 1),
                          fontSize: 18
                        ),                    
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Image(image: AssetImage("lib/assets/icons/creep.png",), width: 13, height: 13,))
                    ],)
                ],),

                //LANE
                Container(  
                  margin: EdgeInsets.only(left: 20),                
                  child: 
                  Image(image: AssetImage("lib/assets/lanes/$lane.png"), height: 26, width: 26),
                ),
              ],
            )

            
          ]),
      );    
  }
}