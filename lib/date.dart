import 'package:flutter/material.dart';
import 'reminder.dart';

class Date extends StatefulWidget {
  Date({Key key, this.dateDue}) : super(key: key);
  DateTime dateDue;
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    String convertedDateTime =
        "${widget.dateDue.year.toString()}-${widget.dateDue.month.toString().padLeft(2, '0')}-${widget.dateDue.day.toString().padLeft(2, '0')}";

    return Container(
      child: Text(convertedDateTime),
    );
  }
}
