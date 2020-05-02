import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profeplus/widgets/input_text.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
//      appBar: AppBar(title: Text('Registro'),),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.deepPurple,
          child: Column(

            children: <Widget>[
              SizedBox(height: size.height*0.12),
              _Appicon(size),
              SizedBox(height: size.height*0.03),
              _User(size),
              SizedBox(height: size.height*0.03),
              _Mail(size),
              SizedBox(height: size.height*0.03),
              _Pass(size),
              SizedBox(height: size.height*0.04),
              _Registro(size)
            ],
          ),
        ),
      ),
    );
  }

  Widget _Registro(Size size){
    final pass = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          InputText(
            inputType: TextInputType.text,
            isSecure: true,
            label: 'Contraseña',
            icon: Icon(Icons.vpn_key),
            validator: (String text){
              if(text.contains("@")){
                //          _email = text;
                return null;
              }
              return 'Contraseña Inválida';
            },
          )
        ],
      ),
    );

    return pass;
  }

  Widget _Pass(Size size){
    final pass = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          InputText(
            inputType: TextInputType.text,
            isSecure: true,
            label: 'Contraseña',
            icon: Icon(Icons.vpn_key),
            validator: (String text){
              if(text.contains("@")){
                //          _email = text;
                return null;
              }
              return 'Contraseña Inválida';
            },
          )
        ],
      ),
    );

    return pass;
  }

  Widget _Mail(Size size){
    final mail = Container(
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

    return mail;
  }

  Widget _User(Size size){
    final user = Container(
      width: size.width*0.8,
      child: Column(
        children: <Widget>[
          InputText(
            inputType: TextInputType.emailAddress,
            label: 'Nombre',
            icon: Icon(Icons.account_circle),
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

  Widget _Appicon(Size size){
    return Container(
      width: size.width*0.2,
      height: size.width*0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.video_library)
        ],
      ),
    );
  }
}
