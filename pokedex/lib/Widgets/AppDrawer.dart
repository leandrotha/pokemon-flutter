import 'package:flutter/material.dart';
import 'package:pokedex/ViewControllers/SecondScreen.dart';

class AppDrawer extends StatelessWidget {
  final String title;

  AppDrawer(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      color: Colors.white,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 75, left: 20),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("tap 1");
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen())
              );
            },
            child: Text(title + "1"),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              print("tap 2");
            },
            child: Text(title + "2"),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              print("tap 3");
            },
            child: Text(title + "3"),
          ),
        ],
      ),
    );
  }

}