import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'menu_screen.dart';


void main() {
  runApp(Cadastro());
}

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gandini Games Formulário'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuScreen()));
          },
        ),
      ),
        backgroundColor: Colors.yellow,
        body: FormularioPage(),
      );
  }
}


class FormularioPage extends StatefulWidget {
  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController saldoController = TextEditingController();


  //Parte lógica
  Future<void> enviarDados() async {
    var url = 'http://localhost/Ggames_flutter/gandini_games/api.php'; 
    var data = {
      'nome': nomeController.text,
      'email': emailController.text,
      'cep': cepController.text,
      'saldo': saldoController.text,
    };

    var response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      //caso de certo
      print("Dados enviados com sucesso");
      print(response.body);
    } else {
      //falhe
      print("Erro ao enviar dados");
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insira aqui seus dados:'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: cepController,
              decoration: InputDecoration(labelText: 'CEP'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: saldoController,
              decoration: InputDecoration(labelText: 'Saldo'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                enviarDados();
              },
              child: Text('Enviar Dados'),
            ),
          ],
        ),
      ),
    );
  }
}
