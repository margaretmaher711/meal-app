import 'package:flutter/material.dart';

import './catmealScreen.dart';

class CatItem extends StatelessWidget {
  String titel;
  Color color;
  String id;

  CatItem(String this.id, String this.titel, Color this.color);

  void selectCat(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CatMealScreen.routName,
        arguments: {'id': id, 'title': titel, 'color': color});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCat(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          titel,
          style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
