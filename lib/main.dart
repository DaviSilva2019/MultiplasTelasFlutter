import 'package:flutter/material.dart';
import 'package:multiplas_telas_udemy/screens/categories_meals_screen.dart';
import './screens/tabs_screen.dart';
import './screens/settings_screen.dart';
import './utils/app_routes.dart';
import './screens/meal_detail_screen.dart';

import './models/meal.dart';
import './data/dummy_data.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List <Meal> _avaliableMeals = DUMMY_MEALS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        App_Routes.HOME: (ctx) => TabsScreen(),
        App_Routes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        App_Routes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        App_Routes.SETTINGS: (ctx) => SettingsScreen()
      },
    );
  }
}
 