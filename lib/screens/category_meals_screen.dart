import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meal.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Category category;

  const CategoryMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    final List<Meal> meals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(meals[index]);
        },
        itemCount: meals.length,
      ),
    );
  }
}
