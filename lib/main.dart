// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lol_matching/model/tela_modelo.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoL Matching',
      initialRoute: 't1',
      routes: {
        't1' :(context) => TelaModelo(),
      },
    )
  );
}