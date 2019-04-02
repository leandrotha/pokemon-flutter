import 'package:flutter/material.dart';
import 'package:pokedex/ViewControllers/SecondScreen.dart';
import 'package:pokedex/Widgets/AppDrawer.dart';

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
          GestureDetector(
            onTap: () {
              MaterialPageRoute(builder: (context) => SecondScreen());
            },
            child: Text("Teste 1"),
          ),
          Text("Teste 2")
        ],
      ),
      drawer: AppDrawer("Hey")
    );
  }

  AppBar appBar = AppBar(
    title: Text("Pokédex"),
    backgroundColor: Colors.red,
  );
}