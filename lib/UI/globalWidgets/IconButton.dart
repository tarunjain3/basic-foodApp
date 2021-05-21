import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final Function onPressedCalled;
  final IconData icon;
  final String label;
  const IconButtonCustom({this.onPressedCalled, this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      label: Text("$label"),
      onPressed: onPressedCalled,
      icon: Icon(icon),
    );
  }
}
