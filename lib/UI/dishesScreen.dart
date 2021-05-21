import 'package:flutter/material.dart';
import 'package:shoping_app/UI/widgets/dishCardView.dart';
import 'package:shoping_app/data/mealData.dart';

class DishesScreen extends StatelessWidget {
  static const String route = "/DishesScreen";
  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArg =
        ModalRoute.of(context).settings.arguments;
    final String categoryId = routeArg["id"];
    final String categoryTitle = routeArg["title"];
    final List mealsList = DUMMY_MEALS
        .where((element) => element.categorysId.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
          itemCount: mealsList.length,
          itemBuilder: (context, index) {
            return DishCardView(mealsList[index]);
          }),
    );
  }
}
