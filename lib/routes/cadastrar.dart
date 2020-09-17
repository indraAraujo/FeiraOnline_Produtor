//---------------- CADASTRAR ---------------

import 'package:flutter/material.dart';

class Cadastrar extends StatefulWidget {
  @override
  CadastrarState createState() => new CadastrarState();
}

class CadastrarState extends State<Cadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Cadastrar',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Ruluko', color: Colors.green),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 430,
              child: ListView(children: <Widget>[
                SizedBox(
                  height: 40,
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Complete os campos abaixo com seus dados para poder se cadastrar.',
                    style: TextStyle(fontFamily: 'Ruluko'),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                //* NOME INPUT
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Ruluko'),
                      hintText: 'Nome Completo',
                      filled: true,
                      fillColor: Colors.grey[100],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                //* E-MAIL INPUT
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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

                //* CONFIRMAR SENHA INPUT
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Ruluko'),
                      hintText: 'Confirmar senha',
                      filled: true,
                      fillColor: Colors.grey[100],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                //* CADASTRAR BUTTON
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 110,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          width: 340,
                          height: 38,
                          child: RaisedButton(
                            color: Colors.green,
                            splashColor: Colors.green[400],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/Home');
                            },
                            child: Text(
                              "Cadastrar",
                              style: TextStyle(fontFamily: 'Ruluko'),
                            ),
                          )),
                    ])),
          ],
        ),
      ),
    );
  }
}
