import 'package:flutter/material.dart';
import 'meal-Item.dart';
import './dummy_data.dart';

class CatMealScreen extends StatefulWidget {
  static const routName = 'Cate_Meals_Screan';

  @override
  _CatMealScreenstate createState() => _CatMealScreenstate();
}

class _CatMealScreenstate extends State<CatMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeage =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryId = routeage['id'];
    final catTitle = routeage['title'];
    final CatMeal = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: CatMeal[index].id,

            imageUrl: CatMeal[index].imageUrl,
            title: CatMeal[index].title,
            duration:CatMeal[index].duration ,
            affordability: CatMeal[index].affordability,
            complexity: CatMeal[index].complexity,
          );
        },
        itemCount: CatMeal.length,
      ),
    );
  }
}
