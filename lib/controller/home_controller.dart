import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/widgets/historico_widget.dart';

List<HistoricoWidget> listaTeste = [
  HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
  HistoricoWidget("Syndra", "mid", "25/10/2", 256, true),
  HistoricoWidget("Khazix", "jungle", "0/10/3", 60, false),
  HistoricoWidget("Jinx", "adc", "26/3/14", 320, true),
  HistoricoWidget("Lulu", "sup", "3/7/19", 30, true),
  HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
  HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
  HistoricoWidget("Aatrox", "top", "17/2/9", 123, false),
];



class HomeController{


    retornaHistorico() {

    // List<HistoricoWidget> listaWidget = [];
    // var colletion = FirebaseFirestore.instance.collection('partida');
    // var lista = await colletion.get();

    // for(var doc in lista.docs){
      
    //   listaWidget.add(
    //     HistoricoWidget(doc['campeao'], doc['rota'], doc['kda'], doc['farm'], doc['vitoria'])
    //   );
    
    // }

    //return HistoricoWidget("Aatrox", "top", "17/2/9", 123, false);

    return FirebaseFirestore.instance.collection('partida');

  }

  
}