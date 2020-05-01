import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profeplus/widgets/input_text.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: Colors.green),
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  _iconApp(size),
                  SizedBox(height: size.height*0.13),
                  _user(size),
                  SizedBox(height: size.height*0.04),
                  _pass(size),
                  SizedBox(height: size.height*0.02),
                  _forgotPass(size),
                  SizedBox(height: size.height*0.04),
                  _login(size),

                ],
              ),
            ),
          ),
        )
      ),
    );
  }

  Widget _login(Size size){
    final loginButton = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(5),
                  onPressed: ()=> Navigator.pushNamed(context, 'example'),
                  child: Text("Inicia Sesión", style: TextStyle(fontSize: size.height*0.02))
              )
          )
        ],
      ),
    );
    return loginButton;
  }

  Widget _forgotPass(Size size){
    final forgot = Container(
      width: size.width,
      padding: EdgeInsets.only(right: size.width*0.15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('Olvidé mi contraseña', style: TextStyle(fontSize: 16))
        ],
      ),
    );
    return forgot;
  }

  Widget _pass(Size size){
    final pass = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          InputText(
            label: 'Contraseña',
            icon: Icon(Icons.vpn_key),
            isSecure: true,
            validator: (String text){
              if(text.isNotEmpty && text.length > 5){
//          _password = text;
                return null;
              }
              return 'Contraseña Incorrecta';
            },
          )
        ],
      ),
    );

    return pass;
  }

  Widget _user(Size size){
    final user = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          InputText(
          inputType: TextInputType.emailAddress,
            label: 'Correo Electrónico',
            icon: Icon(Icons.email),
            validator: (String text){
              if(text.contains("@")){
    //          _email = text;
                return null;
              }
              return 'Email Inválido';
            },
          )
        ],
      ),
    );

    return user;
  }

  Widget _iconApp(Size size){
    final icon = Container(
      width: size.height*0.12,
      height: size.height*0.12,
      margin: EdgeInsets.only(top: size.width*0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.favorite,
            size: size.width*0.2,
            color: Colors.white,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15
          )
        ]
      ),
    );

    return icon;
  }
}
