import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

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


                Container(
                
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  ),                             
                child: Icon(Icons.notifications_outlined,
                color: Colors.black,            
                ),
                )
              ],
            ),


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
            ),)
          ],
        ),
      ),

      
    );
  }
}