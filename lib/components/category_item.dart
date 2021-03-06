import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/app_routes.dart';
class CategoryItem extends StatelessWidget {
  // definindo variável do tipo categoria
  final Category category;

  // construtor
  const CategoryItem(this.category);

  void __selectCategory(BuildContext context){
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_){
    //       return CategoriesMealsScreen();
    //     }
    //   ),
    // );

    Navigator.of(context).pushNamed( // Navegação a partir de rota nomeada
      App_Routes.CATEGORIES_MEALS,
      arguments: category
      );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => __selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}
