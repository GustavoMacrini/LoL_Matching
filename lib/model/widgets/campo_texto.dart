import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';

class CampoTextoWidget extends StatelessWidget {
  final String title;
  final bool obscure;
  const CampoTextoWidget(
    this.title, this.obscure,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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