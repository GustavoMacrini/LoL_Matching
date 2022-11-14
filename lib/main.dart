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
