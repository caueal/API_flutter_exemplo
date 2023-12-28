
import 'package:flutter/material.dart';
import 'menu_screen.dart';

//definir metodo principal
void main() => runApp(Login());
 
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Gandini Games',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaDeLogin(),
    );
  }

}

 
//definir widget principal
class TelaDeLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo_letra1.png'), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height/3,),
                    FlutterLogo(
                       size: 100),
                    SizedBox(
                        height: 50),
                    TextField(
                        decoration: InputDecoration(
                          filled:true,
                          fillColor: Colors.white,
                          labelText: 'Nome de usuario',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: (){ 
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MenuScreen()));
                        },
                        child:Text('Login'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity,50),
                        ),
                        ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



