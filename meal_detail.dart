import 'package:flutter/material.dart';

class MealDetals extends StatelessWidget {
  static const routName = 'Meal_details';

  @override
  Widget build(BuildContext context) {
    final mealId=ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: null,
    );
  }
}
