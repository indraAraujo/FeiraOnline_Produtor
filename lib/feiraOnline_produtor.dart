import 'package:FeiraOnline_Produtor/routes/adc_produto.dart';
import 'package:FeiraOnline_Produtor/routes/login.dart';
import 'package:flutter/material.dart';
import 'package:FeiraOnline_Produtor/routes/cadastrar.dart';
import 'package:FeiraOnline_Produtor/routes/home.dart';

class FeiraOnline_Produtor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //* ROUTES
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => Login(),
        '/Cadastrar': (context) => Cadastrar(),
        '/Home': (context) => Home(),
        '/Adc_Produto': (context) => Adc_Produto(),
      },
    );
  }
}
