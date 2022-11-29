import 'package:cloud_firestore/cloud_firestore.dart';

class EquipeController{

    retornaEquipe() {
      return  FirebaseFirestore.instance.collection('equipe').where('ativo', isEqualTo: true);      
    }

    addUsuario(icone, nickname, rota){
      
      //ATUALIZA A ROTA DADA COM AS INFORMAÇÕES DA CONTA
      FirebaseFirestore.instance.collection('equipe').doc(rota).set(
        {
          'icone' : icone,
          'nickname' : nickname,                    
          'rota' : rota,
          'owner' : false,
          'ativo' : true,
        },
       SetOptions(merge: true)
      );
    }

    dellUsuario(rota){
      FirebaseFirestore.instance.collection('equipe').doc(rota).set({
        'ativo' : false
      },
      SetOptions(merge: true)
      );
    }
  
}