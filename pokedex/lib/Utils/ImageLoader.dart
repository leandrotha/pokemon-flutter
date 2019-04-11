import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/Widgets/PokeCell.dart';

class ImageLoader {
  static Future<List<String>> loadNames() async {
    List<String> tmpList = [];

    final file = await rootBundle.loadString("Resources/pokemon.csv");
    List<List<dynamic>> rows = const CsvToListConverter(eol: "\n").convert(file);

    for (var i = 1; i < rows.length; i++) {
      String name = rows[i][1];

      if (!name.toLowerCase().contains("mega ") && !name.toLowerCase().contains("primal "))
        tmpList.add(name);
    }

    return tmpList;
  }
}