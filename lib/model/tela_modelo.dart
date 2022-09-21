import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaModelo extends StatefulWidget {
  const TelaModelo({Key? key}) : super(key: key);

  @override
  State<TelaModelo> createState() => _TelaModeloState();
}

class _TelaModeloState extends State<TelaModelo> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 245, 240, 1),
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
          backgroundColor: Color.fromRGBO(249, 241, 227, 1),
          width: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            alignment: Alignment.center,
            child: ListView(padding: EdgeInsets.all(24), children: [
              ListTile(
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.blue,
                  ),
                  title: Text('Amigos'),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ]),
          )),
    );
  }
}