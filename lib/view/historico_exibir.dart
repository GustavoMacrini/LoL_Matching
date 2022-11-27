// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/historico_widget.dart';


class HistoricoExibir extends StatefulWidget {
  final partidas;


  const HistoricoExibir(this.partidas,
      {Key? key})
      : super(key: key);

  @override
  State<HistoricoExibir> createState() => _HistoricoExibirState();
}

class _HistoricoExibirState extends State<HistoricoExibir> {
  @override
  Widget build(BuildContext context) {

    //LISTA DE ROLAGEM DO HISTORICO
    return Expanded(      
      child: Container(
        color: secondaryColor,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: StreamBuilder<QuerySnapshot>(
          stream: widget.partidas.snapshots(),
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
                      String campeao = item['campeao'];
                      int farm = item['farm'];
                      String kda = item['kda'];
                      String rota = item['rota'];
                      bool vitoria = item['vitoria']; 
          
                      return Card(
                        color: secondaryColor,
                        child: HistoricoWidget(campeao, rota, kda, farm, vitoria)
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma partida encontrada.'),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
