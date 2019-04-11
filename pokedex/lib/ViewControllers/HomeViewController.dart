import 'package:flutter/material.dart';
import 'package:pokedex/Utils/ImageLoader.dart';
import 'package:pokedex/ViewControllers/SecondScreen.dart';
import 'package:pokedex/Widgets/AppDrawer.dart';
import 'package:pokedex/Widgets/PokeCell.dart';

class HomeViewController extends StatefulWidget {
  @override
  _HomeViewControllerState createState() => _HomeViewControllerState();

  final String title = "Pokédex";
}

class _HomeViewControllerState extends State<HomeViewController> {
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