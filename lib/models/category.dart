import 'package:flutter/material.dart';

class Category{
  //declaração de variáveis
  final String id;
  final String title;
  final Color color;
  
  //construtor. 
  //Com atributos setados com final, o construtor pode ser const 
  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });

}