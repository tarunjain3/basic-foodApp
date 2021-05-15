import 'package:flutter/material.dart';
import 'package:shoping_app/UI/categoryItem.dart';
import 'package:shoping_app/data/categoriesData.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text("Delicious Food"),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (context, index) {
          return CategpryItem(
            title: DUMMY_CATEGORIES[index].title,
            color: DUMMY_CATEGORIES[index].color,
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
      ),
    );
  }
}
