//--------------------- LOGIN -------------------

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),

            //* LOGO
            Container(
              child: Image.asset(
                'assets/images/logo.jpeg',
                width: 200,
                height: 200,
              ),
            ),

            //* E-MAIL INPUT
            Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontFamily: 'Ruluko'),
                  hintText: 'E-mail',
                  filled: true,
                  fillColor: Colors.grey[100],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),

            //* SENHA INPUT
            Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontFamily: 'Ruluko'),
                  hintText: 'Senha',
                  filled: true,
                  fillColor: Colors.grey[100],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),

            //* ENTRAR BUTTON
            Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: RaisedButton(
                  color: Colors.green,
                  splashColor: Colors.green[400],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    null;
                  },
                  child: Text(
                    "Entrar",
                    style: TextStyle(fontFamily: 'Ruluko'),
                  ),
                )),

            //* ENTRAR COM FACEBOOK API
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  splashColor: Colors.blue[500],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    null;
                  },
                  child: Text(
                    "Entrar com Facebook",
                    style: TextStyle(fontFamily: 'Ruluko'),
                  ),
                )),

            //* RECUPERAR SENHA
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: FlatButton(
                  textColor: Colors.green,
                  splashColor: Colors.green[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    null;
                  },
                  child: Text(
                    "Clique aqui para recuperar senha!",
                    style: TextStyle(fontFamily: 'Ruluko'),
                  ),
                )),

            SizedBox(height: 20),

            //* CADASTRAR-SE BUTTON
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: RaisedButton(
                  color: Colors.green,
                  splashColor: Colors.green[400],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Cadastrar');
                  },
                  child: Text(
                    "Cadastrar-se",
                    style: TextStyle(fontFamily: 'Ruluko'),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
