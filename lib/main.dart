import 'package:flutter/material.dart';
import 'package:lol_matching/model/tela_login.dart';

import 'model/tela_perfil.dart';


void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LoL Matching',
    initialRoute: 't1',
    routes: {
      't1': (context) => TelaPerfil(),
    },
  ));
}