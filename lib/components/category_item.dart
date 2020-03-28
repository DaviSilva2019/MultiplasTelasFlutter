import'package:flutter/material.dart';

import '../models/category.dart';

class CategoryItem extends StatelessWidget {
 
 // definindo variável do tipo categoria
  final Category category;

  // construtor
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(category.title),
    );
  }
}