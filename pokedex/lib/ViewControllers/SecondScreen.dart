import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Widgets/PokeCell.dart';
import 'package:flutter/services.dart' show rootBundle;

class SecondScreen extends StatelessWidget {

  List<List<dynamic>> _fullList;
  List<PokeCell> _cellList;

  @override
  Widget build(BuildContext context) {
    _loadData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokédex"),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _loadCells(_fullList);
            return ListView.builder(
              itemCount: _cellList.length ?? 0,
              itemBuilder: (context, index) {
                return _cellList[index];
              },
            );
          }
        }
      ),
    );
  }

  Future<List<List<dynamic>>> _loadData() async {
    final file = await rootBundle.loadString("Resources/pokemon.csv");
    List<List<dynamic>> rows = const CsvToListConverter(eol: "\n").convert(file);

    _fullList = rows;

    return rows;
  }

  _loadCells(List<List<dynamic>> list) {
    for (var i = 1; i < list.length; i++) {
      String name = list[i][1];
      _cellList.add(PokeCell(name));
    }
  }

}