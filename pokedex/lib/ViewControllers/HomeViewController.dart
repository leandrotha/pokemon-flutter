import 'package:flutter/material.dart';

class HomeViewController extends StatefulWidget {
  @override
  _HomeViewControllerState createState() => _HomeViewControllerState();

  final String title = "Pokédex";
}

class _HomeViewControllerState extends State<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: <Widget>[
          Text("Teste 1"),
          Text("Teste 2")
        ],
      ),
      drawer: Column(
        children: <Widget>[
          Container(
            height: appBar.preferredSize.height,
            width: _getDrawerWidth(),
            color: Colors.red,
          ),
          Container(
            color: Colors.white,
            width: _getDrawerWidth(),
            child: ListView(
              children: <Widget>[
                Text("Teste 3"),
                Text("Teste 4")
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar = AppBar(
    title: Text("Pokedéx"),
    backgroundColor: Colors.red,
  );

  double _getDrawerWidth() {
    return MediaQuery.of(context).size.width * 0.6;
  }

  double _getDrawerHeight() {
    return MediaQuery.of(context).size.height - appBar.preferredSize.height;
  }
}