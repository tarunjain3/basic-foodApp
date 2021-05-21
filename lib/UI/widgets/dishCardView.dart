import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/UI/globalWidgets/IconButton.dart';
import 'package:shoping_app/models/meal.dart';

class DishCardView extends StatelessWidget {
  final Meal mealElement;
  const DishCardView(this.mealElement);
  String get complexity {
    if (mealElement.complexity == Complexity.Simple)
      return "Simple";
    else if (mealElement.complexity == Complexity.Challenging)
      return "Challenging";
    else
      return "Hard";
  }

  String get affordability {
    if (mealElement.affordability == Affordability.Affordable)
      return "Affordable";
    else if (mealElement.affordability == Affordability.Luxurious)
      return "Luxurious";
    else
      return "Pricey";
  }

  @override
  Widget build(BuildContext context) {
    final cWidth = MediaQuery.of(context).size.width;
    final bool currentPlatform = Platform.isAndroid;
    return InkWell(
      onTap: () => () {},
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                  ),
                  child: Image.network(
                    mealElement.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: cWidth * 0.03,
                  bottom: cWidth * 0.08,
                  child: Container(
                    width: cWidth * 0.7,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    color: Colors.black54,
                    child: Text(
                      "${mealElement.title}",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 26.0),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            currentPlatform
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButtonCustom(
                          icon: Icons.watch_later_outlined,
                          onPressedCalled: () {},
                          label: "${mealElement.duration} min",
                        ),
                        IconButtonCustom(
                          icon: Icons.work_outline_rounded,
                          onPressedCalled: () {},
                          label: "$complexity",
                        ),
                        IconButtonCustom(
                          icon: Icons.attach_money_outlined,
                          label: "$affordability",
                          onPressedCalled: () {},
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButtonCustom(
                          icon: CupertinoIcons.clock,
                          onPressedCalled: () {},
                          label: "${mealElement.duration} min",
                        ),
                        IconButtonCustom(
                          icon: CupertinoIcons.bag,
                          label: "$complexity",
                          onPressedCalled: () {},
                        ),
                        IconButtonCustom(
                          icon: CupertinoIcons.money_dollar,
                          label: "$affordability",
                          onPressedCalled: () {},
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
