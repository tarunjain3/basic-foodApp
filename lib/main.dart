import 'package:flutter/material.dart';

import 'UI/categoriesScreen.dart';
import 'UI/dishesScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
                fontSize: 20.0,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold)),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => CategoriesScreen(),
        DishesScreen.route: (context) => DishesScreen(),
      },
    );
  }
}
