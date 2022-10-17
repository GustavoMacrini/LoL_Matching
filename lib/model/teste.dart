import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lol_matching/model/campeao.dart';

class MyWidget extends StatefulWidget {
    
  MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    List<Campeao> listaChamp = [];

    //CARREGAR DADOS
    carregarDados() async {
    final String a = await rootBundle.loadString(
      'lib/data/paises.json',
    );
    final dynamic d = await json.decode(a);
    setState(() {
      d.forEach((item) {
        listaChamp.add(Campeao.fromJson(item));
      });
    });
  }

    final dropValue = ValueNotifier('');
    return Container(
      child: ValueListenableBuilder(
        valueListenable: dropValue, builder: ((context, String value, _) {
          final dropOpcoes = [
          'Aatrox',
          'Syndra',
          'Khazix',
          'Ziggs',
          'Gragas',
          ];
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
                  Image(image: NetworkImage("http://ddragon.leagueoflegends.com/cdn/12.19.1/img/champion/$op.png"),
                  width: 40,
                  height: 40,
                  ),
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
