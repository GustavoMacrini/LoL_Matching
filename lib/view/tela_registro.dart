// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/campo_texto.dart';

import '../controller/login_controller.dart';

// final lista = <CampoTextoWidget> [
//  CampoTextoWidget("Email", false,txtEmail),
//  CampoTextoWidget("Nome", false, txtNome),
//  CampoTextoWidget("Nickname", false, txtNickname),
//  CampoTextoWidget("Senha", true, txtSenha),
//  CampoTextoWidget("Confirmar senha", true, txtConfSenha),
// ];

var txtNome = TextEditingController();
var txtEmail = TextEditingController();
var txtSenha = TextEditingController();
//var txtConfSenha = TextEditingController();
var txtNickname = TextEditingController();

class TelaRegistro extends StatefulWidget {
  const TelaRegistro({Key? key}) : super(key: key);

  @override
  State<TelaRegistro> createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR INVISIVEL
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text(
            "LoL Matching",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
            iconSize: 30,
            //Deixa o efeito de clique praticamente invisivel
            splashRadius: 1,
          ),
          actions: [],
        ),
      ),

      backgroundColor: secondaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(26, 40, 26, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //EMAIL
            CampoTextoWidget("Email", false, txtEmail),

            //NOME
            CampoTextoWidget("Nome", false, txtNome),

            //NICKNAME
            CampoTextoWidget("Nickname", false, txtNickname),

            //SENHA
            CampoTextoWidget("Senha", true, txtSenha),

            //CONFIRMAR SENHA
            //CampoTextoWidget("Confirmar senha", true, txtConfSenha),

            botao("CRIAR"),
          ],
        ),
      ),
    );
  }

  //BOTÃO TROCA DE CONTEXTO
  botao(titulo) {
    return Container(
      width: 148,
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
        ),
        onPressed: () {
          LoginController().criarConta(context, txtNome.text, txtNickname.text,
              txtEmail.text, txtSenha.text);


          //final snackBar = SnackBar(
          //  content: const Text('Conta criada com sucesso!'),
          //  duration: Duration(seconds: 2, milliseconds: 500),
          //  action: SnackBarAction(
          //    label: "Fechar",
          //    onPressed: () {},
          //  ),
          //);
          //ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //Navigator.of(context).pop();
        },
        child: Text(
          titulo,
          style: TextStyle(color: secondaryColor, fontSize: 16),
        ),
      ),
    );
  }
}
