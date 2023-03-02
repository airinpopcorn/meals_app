import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  static const routeName = "/meals";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];

    final categoryMeals = dummyMeals.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
