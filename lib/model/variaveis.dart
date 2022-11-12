// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

var primaryColor = Color.fromRGBO(222, 165, 71, 1);
var secondaryColor = Color.fromRGBO(4, 32, 40, 1);
//var username = "Kindred Kawaii";
var discord = "usu.discord#123";
var elo = "Desafiante";
var pdl = "487";
var taxaVitoria = "48%";

void erro(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.redAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

void sucesso(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.greenAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}


