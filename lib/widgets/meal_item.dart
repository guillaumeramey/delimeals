import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: NetworkImage(meal.imageUrl)),
      title: Text(meal.title),
      contentPadding: const EdgeInsets.all(20),
      subtitle: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.timer),
              Text(meal.duration.toString()),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.attach_money),
              Text(meal.affordability.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
