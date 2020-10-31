import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mudar Fundo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mudar Fundo",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //color: Colors.lightBlue,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 200,
            child: Center(
              child: Botao(),
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class Botao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(content: Text("Mudou a cor"));
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: 210,
        height: 55,
        child: Center(
          child: Text(
            "Mudar a Cor",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
        //alignment: Alignment.bottomCenter,
      ),
    );
  }
}
