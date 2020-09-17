//------------------- HOME --------------------

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Text(
            'FeiraOnline',
            style: TextStyle(fontFamily: 'Ruluko', color: Colors.green),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, '/Adc_Produto');
              },
              tooltip: 'Adicionar produto',
              color: Colors.green[400],
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.pushNamed(context, '/Home');
              },
              tooltip: 'Perfil',
              color: Colors.green[400],
            ),
          ],
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 600,
              child: ListView(children: <Widget>[
                Container(
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.green[200],
                      onTap: () {
                        Navigator.pushNamed(context, '/Home');
                      },
                      child: Container(
                        width: 100,
                        height: 300,
                        child: Image.asset(
                          'assets/images/slide/geleia.jpg',
                          height: 500,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        )));
  }
}
