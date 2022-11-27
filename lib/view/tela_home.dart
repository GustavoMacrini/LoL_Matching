// ignore_for_file: prefer_const_constructors
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:lol_matching/controller/login_controller.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/view/historico_exibir.dart';

import '../controller/home_controller.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  
  var listaPartidas;

  @override
  void initState(){
    super.initState();
    listaPartidas = HomeController().retornaHistorico();
  }


  @override
  Widget build(BuildContext context) {                 
    
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
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
           
            //HISTORICO
            HistoricoExibir(listaPartidas)

          ],
        ),
      ),
    );
  }   

}
