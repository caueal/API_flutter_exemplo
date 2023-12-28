
import 'package:flutter/material.dart';

import 'menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String nome = "Joao";
  final String email = "joao@exemplo.com";
  final String cep = "12345-678";
  final double saldo = 100.50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuScreen()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: $nome',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'E-mail: $email',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'CEP: $cep',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Saldo: R\$ $saldo',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
           ],
        ),
      ),
    );
  }
}
