import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lol_matching/controller/equipe_controller.dart';

class PesquisarController{

  searchRota(icone, nickname) async{
    List<String> rotas = [];
    var firstRota;

    QuerySnapshot rotasQuery = await FirebaseFirestore.instance.collection("equipe").where('ativo', isEqualTo: false).get();
     
    //ADICIONA TODAS AS ROTAS QUE FALTAM EM UMA LISTA
    for(var doc in rotasQuery.docs){
      rotas.add(doc['rota']);
    }


    //PEGA A PRIMEIRA ROTA DA LISTA
    firstRota = rotas.first;
    
    //ADICIONA O USUARIO NA PRIMEIRA ROTA LIVRE
    EquipeController().addUsuario(icone, nickname, firstRota);

  }

}