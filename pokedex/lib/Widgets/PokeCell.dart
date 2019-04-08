import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokeCell extends StatelessWidget {

  final String name;

  PokeCell(this.name);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16.0),
            child: Image.asset("Thumbnails/" + name.toLowerCase()),
          ),
          Container(
            padding: EdgeInsets.only(left: 46.0),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
