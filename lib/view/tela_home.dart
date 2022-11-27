// ignore_for_file: prefer_const_constructors
// ignore_for_file: sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_matching/controller/login_controller.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/historico_widget.dart';
import 'package:lol_matching/view/historico_exibir.dart';

import '../controller/home_controller.dart';
List<HistoricoWidget> bbbbb = [];

List<HistoricoWidget> listaHistorico = [
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Syndra", "mid", "25/10/2", 256, true),
                    // HistoricoWidget("Khazix", "jungle", "0/10/3", 60, false),
                    // HistoricoWidget("Jinx", "adc", "26/3/14", 320, true),
                    // HistoricoWidget("Lulu", "sup", "3/7/19", 30, true),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Syndra", "mid", "25/10/2", 256, true),
                    // HistoricoWidget("Khazix", "jungle", "0/10/3", 60, false),
                    // HistoricoWidget("Jinx", "adc", "26/3/14", 320, true),
                    // HistoricoWidget("Lulu", "sup", "3/7/19", 30, true),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    // HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
                    
                  ];


class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  
  var aaaaa;

  @override
  void initState(){
    super.initState();
    aaaaa = HomeController().retornaHistorico();
  }




  @override
  Widget build(BuildContext context) {                 
    
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FutureBuilder<String>(
                  future: LoginController().retornarUsuarioLogado(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(
                        color: primaryColor,
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasError) {
                        return const Text('Error');
                      } else if (snapshot.hasData) {
                        return Text('Olá ${snapshot.data.toString()} !',
                            style:
                                TextStyle(color: primaryColor, fontSize: 20));
                      } else {
                        return const Text('Empty data');
                      }
                    } else {
                      return Text('State ${snapshot.connectionState}');
                    }
                  },
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
                    icon: Icon(Icons.notifications_outlined),
                    onPressed: () {
                      //SNACKBAR
                      final snackBar = SnackBar(
                        content: const Text('Não há notificações'),
                        duration: Duration(seconds: 2, milliseconds: 500),
                        action: SnackBarAction(
                          label: "Fechar",
                          onPressed: () {},
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
              margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: Row(
                children: [
                  Text(
                    "Suas últimas partidas:",
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  ),
                ],
              ),
            ),


            //CARREGAR HISTORICO
           
            //HISTORICO
            HistoricoExibir(aaaaa)

            //HISTORICO
            // Expanded(
              
            //   flex: 10,
            //   child: ListView.separated(
            //     shrinkWrap: true,
            //     itemBuilder: (context, snapshot) {
            //       //Future<List<HistoricoWidget>> aaaaa = HomeController().retornaHistorico();
            //       //List<HistoricoWidget> bbbbb = aaaaa as List<HistoricoWidget>;
            //       // var historico;                  
            //       // historico = HomeController().retornaHistorico();
            //       // historico.docs['campeao'];

            //       // for(var doc in historico.docs) {
            //       //   listaHistorico = [HistoricoWidget(doc['campeao'], doc['rota'],doc['kda'], doc['farm'], doc['vitoria'])];
            //       // }

            //       //print(bbbbb.length);
                  
            //       List<HistoricoWidget> bbbbb = [HomeController().retornaHistorico()];
                  
            //       final item = snapshot.re

                  
            //       return Card(
            //         color: secondaryColor,
            //         child: bbbbb[index],
            //       );
            //     },
            //     itemCount: bbbbb.length,
            //     separatorBuilder: (BuildContext context, int index) =>
            //         const Divider(),
            //   ),
            // ),



          ],
        ),
      ),
    );
  }   

}
