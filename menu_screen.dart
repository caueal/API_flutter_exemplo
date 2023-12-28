//importando os pacotes necessarios
import 'dart:html';

import 'package:flutter/material.dart';
import 'perfil.dart';
import 'cadastro.dart';

class MenuScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Agenda Escolar',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Gandini Games'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Perfil Teste'), 
              accountEmail: Text('teste@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil do usuario'),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                  //navegar para a tela de dados 
                },

              ),
        
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('Loja'),
                onTap: (){  
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuScreen()));
                  //navegar pela loja
                },

                  ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1_rounded),
                title: Text('Cadastro de Dados'),
                onTap: (){  
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Cadastro()));
                  //navegar pelo cadastro
                },
              ),
          ],
        ),
      ), 
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/imagem_logoReal2.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}