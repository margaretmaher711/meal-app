import 'package:flutter/material.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    @required this.id,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.title,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegetarian,
    @required this.isVegan,
    @required this.affordability,
    @required this.categories,
    @required this.complexity,
    @required this.steps,
    @required this.duration,
  });
}
