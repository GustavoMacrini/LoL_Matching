import 'package:flutter/material.dart';
import 'package:lol_matching/view/tela_login.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LoL Matching',
    initialRoute: 't1',
    routes: {
      't1': (context) => TelaLogin(),
    },
  ));
}