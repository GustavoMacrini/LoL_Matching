import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lol_matching/firebase_options.dart';
import 'package:lol_matching/view/tela_login.dart';
import 'package:lol_matching/view/tela_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LoL Matching',
    initialRoute: 't1',
    routes: {
      't1': (context) => TelaLogin(),
      'menu': (context) => TelaMenu(),
    },
  ));
} 





// TESTE QUE DEU CERTO*******************

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lol_matching/firebase_options.dart';

// import 'model/widgets/historico_widget.dart';

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );


//   runApp(MaterialApp(
    
//   ));

//   await Firebase.initializeApp();
//   var colletion = FirebaseFirestore.instance.collection('partida');

//   var lista = await colletion.get();

//   // final lista = [];
//   // lista.add(colletion.doc().get());

//   for(var doc in lista.docs){
//     print(
//       doc['campeao']
//     );
//   }

// }


//TESTE PASSANDO LISTA POR PARAMETRO DE FUNCAO *****************

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lol_matching/model/widgets/historico_widget.dart';

// void main(){
//   runApp(MaterialApp());

//   List<int> numLista = [];

//   numLista = retornaLista();

//   print(numLista[1]);

// }

// retornaLista(){
//   HistoricoWidget()
  
//   return aaa;
// }
