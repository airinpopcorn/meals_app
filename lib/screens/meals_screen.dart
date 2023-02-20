import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: const Center(
          child: Text("The recepies for the category"),
        ));
  }
}
