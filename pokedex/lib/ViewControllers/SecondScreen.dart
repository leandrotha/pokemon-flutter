import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Utils/ImageLoader.dart';
import 'package:pokedex/Widgets/PokeCell.dart';
import 'package:flutter/services.dart' show rootBundle;

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokédex"),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
        future: ImageLoader.loadNames(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<String> pokeList;
            try {
              pokeList = snapshot.data as List<String>;
            } catch (e) {
              return AlertDialog(
                title: Text("Deu ruim"),
              );
            }
            return ListView.builder(
              itemCount: pokeList.length ?? 0,
              itemBuilder: (context, index) {
                return PokeCell(pokeList[index]);
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}