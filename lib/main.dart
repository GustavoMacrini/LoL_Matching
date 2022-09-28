import 'package:flutter/material.dart';

import 'model/tela_modelo.dart';


void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LoL Matching',
    initialRoute: 't1',
    routes: {
      't1': (context) => TelaModelo(),
    },
  ));
}