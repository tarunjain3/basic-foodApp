import 'package:flutter/material.dart';

class CategpryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategpryItem({this.title, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
