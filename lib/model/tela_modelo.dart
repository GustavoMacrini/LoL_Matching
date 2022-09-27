import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaModelo extends StatefulWidget {
  const TelaModelo({Key? key}) : super(key: key);

  @override
  State<TelaModelo> createState() => _TelaModeloState();
}

class _TelaModeloState extends State<TelaModelo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 245, 240, 1),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: 'Search'
          ),
        ]),

      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      

    );
  }
}