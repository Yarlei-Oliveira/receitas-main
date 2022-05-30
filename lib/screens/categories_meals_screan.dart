import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/new_item.dart';

class CategoriesMealsScrean extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    },).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeal.length,
        itemBuilder: (context, index) {
          return MealItem(categoryMeal[index]);
        },
      )
    );
  }
}
