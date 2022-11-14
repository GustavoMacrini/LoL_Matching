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
                  image: AssetImage("lib/assets/logo/logo_app3.png"),
                  height: 100,
                )),

            Container(
              margin: EdgeInsets.only(bottom: 36),
              child: CampoTextoWidget("Email", false, txtEmail),
            ),

            CampoTextoWidget("Senha", true, txtSenha),

            //ESQUECEU SENHA
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){

                      showDialog(
                      
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          'Informe seu e-mail',
                          style: TextStyle(
                            fontSize: 24,
                            color: primaryColor,
                          ),
                        ),
                        titlePadding: EdgeInsets.all(20),
                        content: Container(
                          width: 350,
                          height: 90,
                          child: Column(
                            children: [
                              CampoTextoWidget('E-mail', false, txtEmail),
                            ],
                          ),
                        ),
                        backgroundColor: secondaryColor,
                        actionsPadding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'cancelar',
                              style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              minimumSize: Size(120, 50),
                            ),
                            onPressed: () async {
                              if (txtEmail.text.isNotEmpty) {
                                LoginController().esqueceuSenha(txtEmail.text);
                                sucesso(context, 'E-mail enviado com sucesso.');
                              } else {
                                erro(context,
                                    'Informe o e-mail para recuperar a senha.');
                              }

                              Navigator.pop(context);
                            },
                            child: Text(
                              'enviar',
                              style: TextStyle(
                                fontSize: 20,
                                color: secondaryColor,
                              )
                            ),
                          ),
                        ],
                      ),
                    );


                      
                    },
                    child: Text(
                      "Esqueceu sua senha?",
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

            //CRIAR CONTA
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 80),
              child: 
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Ainda não tem uma conta?",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    )
                  ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TelaRegistro()));
                        },
                        child: Text(
                          "Cadastre-se",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(13, 196, 217, 1),
                          ),
                        ),
                      ),
                    ],
                  ),                  
                ],
              ),
            ),
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
          txtEmail.clear();
          txtSenha.clear();
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
