import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController{

    retornaHistorico() {

    // List<HistoricoWidget> listaWidget = [];
    var collection = FirebaseFirestore.instance.collection('partida');

    return FirebaseFirestore.instance.collection('partida');

  }

  
}