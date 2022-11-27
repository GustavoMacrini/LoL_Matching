// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/equipe_widget.dart';
import 'package:lol_matching/model/widgets/historico_widget.dart';


class EquipeExibir extends StatefulWidget {
  final usuarios;


  const EquipeExibir(this.usuarios,
      {Key? key})
      : super(key: key);

  @override
  State<EquipeExibir> createState() => _EquipeExibirState();
}

class _EquipeExibirState extends State<EquipeExibir> {
  @override
  Widget build(BuildContext context) {

    //LISTA DE ROLAGEM DO HISTORICO
    return Expanded(      
      child: Container(
        color: secondaryColor,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: StreamBuilder<QuerySnapshot>(
          stream: widget.usuarios.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      dynamic item = dados.docs[index].data();
                      String nickname = item['nickname'];
                      int icon = item['icone'];
                      String lane = item['rota'];
                      bool owner = item['owner'];
          
                      return Card(
                        color: secondaryColor,
                        child: EquipeWidget(nickname, lane, icon, owner)
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma equipe encontrada.'),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
