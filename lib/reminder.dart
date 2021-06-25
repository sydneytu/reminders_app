import 'package:flutter/material.dart';

class Reminder {
  String title;
  String text;
  DateTime dateDue;
  Color color;

  Reminder({@required this.title, @required this.text, @required this.color});

  String getTitle() {
    return title;
  }

  String getText() {
    return text;
  }

  Color getColor() {
    return color;
  }
}
