import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Model/PokeCellModel.dart';

class PokeCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokédex"),
        backgroundColor: Colors.red
      ),
      body: FutureBuilder(
        future: tbt,
        builder: (context, data) {

        }
      ),
    );
  }


  Future<PokeCellModel> _fetchData() async {

  }
}