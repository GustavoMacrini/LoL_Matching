import 'package:flutter/material.dart';

class DropPageChamp extends StatelessWidget {
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    'Aatrox',
    'Blitzcrank',
    'Caitlyn',
    'Darius',
    'Ekko',
    'Fiora',
    'Gragas',
    'Hecarim',
    'Illaoi',
    'Janna',
    'Kindred',
    'Leona',
    'Malphite',
    'Nami',
    'Olaf',
    'Pantheon',
    'Qiyana',
    'Rakan',
    'Syndra',
    'Taliyah',
    'Udyr',
    'Varus',
    'Warwick',
    'Xayah',
    'Yasuo',
    'Ziggs',    
  ];
  
    DropPageChamp(
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
              hint: const Text('Selecionar campeão'),
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