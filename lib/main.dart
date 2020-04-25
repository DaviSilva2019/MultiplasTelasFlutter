import 'package:flutter/material.dart';
import 'package:multiplas_telas_udemy/screens/categories_meals_screen.dart';
import './screens/tabs_screen.dart';
import './screens/settings_screen.dart';
import './utils/app_routes.dart';
import './screens/meal_detail_screen.dart';
import './models/settings.dart';

import './models/meal.dart';
import './data/dummy_data.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Settings settings = Settings();
  List<Meal> _avaliableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = []; 

  void _filterMeals(Settings settings){
    setState(() {
      _avaliableMeals = DUMMY_MEALS.where((meal){
        final filterGlutten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterGlutten && !filterLactose && !filterVegan && !filterVegetarian; 
      }).toList();
    });  
  }  

  void _toggleFavorite(Meal meal){
    setState(() {
      _favoriteMeals.contains(meal) ? _favoriteMeals.remove(meal):
        _favoriteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        ),
      ),
      routes: {
        App_Routes.HOME: (ctx) => TabsScreen(_favoriteMeals),
        App_Routes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(_avaliableMeals),
        App_Routes.MEAL_DETAIL: (ctx) => MealDetailScreen(_toggleFavorite, _isFavorite),
        App_Routes.SETTINGS: (ctx) => SettingsScreen(settings, _filterMeals)
      },
    );
  }
}
 