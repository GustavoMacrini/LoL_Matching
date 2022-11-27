import 'package:cloud_firestore/cloud_firestore.dart';

class EquipeController{

    retornaEquipe() {
      return FirebaseFirestore.instance.collection('equipe');
    }
  
}