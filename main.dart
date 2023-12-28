import 'package:flutter/material.dart';
//import a pagina 
import 'login.dart';

//definir metodo principal 
void main() => runApp(AgendaEscolarApp());

//definindo widge principal 
class AgendaEscolarApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Agenda Escolar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AgendaEscolar(),
    );
  }

}
//definindo widget pag principa
class AgendaEscolar extends StatefulWidget{
  @override
  _AgendaEscolarState createState() => _AgendaEscolarState();
}

class _AgendaEscolarState extends State<AgendaEscolar>{
  @override
    void initState(){
      super.initState();
      _navigateToHome();
    }
    //animaçoes ou iniciar a logica de carregamento que precisa acontecer apenas uma vez.
    //superinitstate() chama a implementacao orignal do metodo initState da classe base state

    _navigateToHome() async{
      await Future.delayed(Duration(milliseconds: 1500), (){});

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    }
    
    @override
    Widget build(BuildContext context){
      return Container(
        color: Colors.indigo,
        child: FlutterLogo(size: 200,),
      );
    }
}
