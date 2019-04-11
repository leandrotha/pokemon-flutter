import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Model/Pokemon.dart';

class SecondScreen extends StatelessWidget {

  Pokemon pokemon;

  SecondScreen({@required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Image.asset("Thumbnails/" + pokemon.name.toLowerCase() + ".png"),
            padding: EdgeInsets.only(top: 20.0, left: 20.0),
          ),
          Text(pokemon.type1),
          Text(pokemon.type2)
        ],
      )
    );
  }
}