import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController{

    retornaHistorico() {

    // List<HistoricoWidget> listaWidget = [];
    var collection = FirebaseFirestore.instance.collection('partida');
    var lista = collection.get();
    // collection.doc().set({
    //   'campeao' : 'Shaco',
    //   'farm' : 999,
    //   'idUsuario' : 99,
    //   'kda' : '99/99/99',
    //   'rota' : 'jungle',
    //   'vitoria' : true
    // });


    return FirebaseFirestore.instance.collection('partida');

  }

  
}