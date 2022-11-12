// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lol_matching/controller/login_controller.dart';
import 'package:lol_matching/view/tela_menu.dart';
import 'package:lol_matching/view/tela_registro.dart';
import 'package:lol_matching/model/variaveis.dart';
import 'package:lol_matching/model/widgets/campo_texto.dart';

var txtEmail = TextEditingController();
var txtSenha = TextEditingController();

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(26, 6, 26, 0),
        child: Column(
          children: [
            //TITULO
            Container(
                margin: EdgeInsets.fromLTRB(0, 27, 0, 35),
                child: Image(
                  image: AssetImage("lib/assets/logo/logo_app2.png"),
                  height: 100,
                )),

            Container(
              margin: EdgeInsets.only(bottom: 36),
              child: CampoTextoWidget("Email", false, txtEmail),
            ),

            CampoTextoWidget("Senha", true, txtSenha),

            //CRIAR CONTA
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 80),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TelaRegistro()));
                    },
                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(13, 196, 217, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            botao("ENTRAR"),
          ],
        ),
      ),
    );
  }

  botao(titulo) {
    return Container(
      width: 148,
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
        ),
        onPressed: () {
          LoginController().login(context, txtEmail.text, txtSenha.text);
          //final snackBar = SnackBar(
          //  content: const Text('Bem Vindo!'),
          //  duration: Duration(seconds: 2, milliseconds: 500),
          //  action: SnackBarAction(
          //    label: "Fechar",
          //    onPressed: () {},
          //  ),
          //);
          //ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //Navigator.of(context)
          //    .push(MaterialPageRoute(builder: (context) => TelaMenu()));
        },
        child: Text(
          titulo,
          style: TextStyle(color: secondaryColor, fontSize: 16),
        ),
      ),
    );
  }
}
