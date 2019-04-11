import 'package:flutter/material.dart';
import 'package:pokedex/Model/Pokemon.dart';
import 'package:pokedex/Utils/PokemonLoader.dart';
import 'package:pokedex/ViewControllers/SecondScreen.dart';
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
          future: PokemonLoader.loadPokemons(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Pokemon> pokeList;
              try {
                pokeList = snapshot.data as List<Pokemon>;
              } catch (e) {
                return AlertDialog(
                  title: Text("Deu ruim"),
                );
              }
              return ListView.builder(
                itemCount: pokeList.length ?? 0,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen(pokemon: pokeList[index]))
                      );
                    },
                    child: PokeCell(pokeList[index].name),
                  );
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