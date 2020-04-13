import 'package:flutter/material.dart';
import 'package:multiplas_telas_udemy/screens/categories_meals_screen.dart';
import './screens/categories_screen.dart';
import './utils/app_routes.dart';
import './screens/meal_detail_screen.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
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
        App_Routes.HOME: (ctx) => CategoriesScreen(),
        App_Routes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        App_Routes.MEAL_DETAIL: (ctx) => MealDetailScreen()
      },
    );
  }
}
 