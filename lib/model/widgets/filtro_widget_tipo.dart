import 'dart:ui';

import 'package:flutter/material.dart';

class DropPageFiltro extends StatelessWidget {
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    'Maestria',
    'Rank',    
    ];
  
    DropPageFiltro(
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {     
    return Container(
      child: ValueListenableBuilder(
        valueListenable: dropValue, builder: ((context, String value, _) {
          return SizedBox(
            width: 230,
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              hint: const Text('Selecione a opção'),
              decoration:               
              InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                fillColor: Colors.white,
                filled: true
              ),
              
              value: (value.isEmpty) ? null : value,
              onChanged: (escolha) => dropValue.value = escolha.toString(),
              items: dropOpcoes.map((op) => DropdownMenuItem(
                value: op,
                child: 
                Row(children: [
                  Text("Filtro:"),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(op)),
                ],)
              ),).toList(),
            ),
          );
        } ),)
    );
  }
}