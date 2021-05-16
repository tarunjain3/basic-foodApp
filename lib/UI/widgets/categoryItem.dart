import 'package:flutter/material.dart';
import 'package:shoping_app/UI/dishesScreen.dart';

class CategpryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategpryItem({@required this.id, this.title, this.color});
  void _selected(BuildContext context) {
    Navigator.of(context)
        .pushNamed(DishesScreen.route, arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selected(context),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text("$title", style: Theme.of(context).textTheme.headline6),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.7),
              color,
            ],
          ),
        ),
      ),
    );
  }
}
