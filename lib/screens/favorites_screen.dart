import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoirteMeals;

  FavoritesScreen(this.favoirteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoirteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoirteMeals[index].id,
            title: favoirteMeals[index].title,
            imageUrl: favoirteMeals[index].imageUrl,
            duration: favoirteMeals[index].duration,
            complexity: favoirteMeals[index].complexity,
            affordability: favoirteMeals[index].affordability,
          );
        },
        itemCount: favoirteMeals.length,
      );
    }
  }
}
