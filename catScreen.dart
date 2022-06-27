import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'catItem.dart';
import 'dummy_data.dart';

class CatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MEEAl",),backgroundColor: Colors.green,
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (CatData) => CatItem(CatData.id, CatData.title, CatData.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2),
      ),
    );
  }
}
