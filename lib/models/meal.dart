import 'package:flutter/foundation.dart';

enum Complexity{
  Simple,
  Medium,
  Difficult
}

enum Cost{
  Cheap,
  Fair,
  Expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    @required id,
    @required categories,
    @required title,
    @required imageUrl,
    @required ingredients,
    @required steps,
    @required duration,
    @required isGlutenFree,
    @required isLactoseFree,
    @required isVegan,
    @required isVegetarian,
    @required complexity,
    @required cost
  });

}