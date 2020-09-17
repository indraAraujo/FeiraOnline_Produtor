//------------------ ADICIONAR PRODUTO -------------

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class Adc_Produto extends StatefulWidget {
  @override
  Adc_ProdutoState createState() => Adc_ProdutoState();
}

class Adc_ProdutoState extends State<Adc_Produto> {
  //* IMAGE
  File imageFile;

  openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
  }

  openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
  }

  Widget selectedImage() {
    if (imageFile != null) {
      return Image.file(
        imageFile,
        width: 300,
        height: 300,
      );
    } else {
      return Image.asset(
        'assets/images/noImage.png',
        width: 200,
        height: 200,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          'Adicionar Produto',
          style: TextStyle(fontFamily: 'Ruluko', color: Colors.green),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
            tooltip: 'Home',
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
                height: 800,
                child: ListView(
                  children: <Widget>[
                    Column(children: <Widget>[
                      //* PHOTO VIEW
                      selectedImage(),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //* CAMERA BUTTON
                          Container(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                  padding: EdgeInsets.all(16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  color: Colors.green[50],
                                  splashColor: Colors.green[100],
                                  child: Text(
                                    'Camera',
                                    style: TextStyle(fontFamily: 'Ruluko'),
                                  ),
                                  onPressed: () {
                                    openCamera(context);
                                  })),
                          //* BUTTON - GALLERY
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: RaisedButton(
                                padding: EdgeInsets.all(16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Colors.green[50],
                                splashColor: Colors.green[100],
                                child: Text('Gallery',
                                    style: TextStyle(fontFamily: 'Ruluko')),
                                onPressed: () {
                                  openGallery(context);
                                }),
                          )
                        ],
                      ),
                    ]),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        'Insira os dados do produto. Os campos com asterisco (*) são OBRIGATÓRIOS.',
                        style: TextStyle(fontFamily: 'Ruluko'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Nome do produto',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Nome do produto',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Tipo do produto',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Preço do produto',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Estoque',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'Ruluko'),
                          hintText: 'Descrição do produto',
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
