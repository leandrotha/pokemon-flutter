import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/Model/Pokemon.dart';

class PokemonLoader {
  static Future<List<Pokemon>> loadPokemons() async {
    List<Pokemon> tmpList = [];

    final file = await rootBundle.loadString("Resources/pokemon.csv");
    List<List<dynamic>> rows = const CsvToListConverter(eol: "\n").convert(file);

    for (var i = 1; i < rows.length; i++) {
      String name = rows[i][1];
      String type1 = rows[i][2];
      String type2 = rows[i][3];

      if (!name.toLowerCase().contains("mega ") && !name.toLowerCase().contains("primal "))
        tmpList.add(Pokemon(name: name, type1: type1, type2: type2));
    }

    return tmpList;
  }
}