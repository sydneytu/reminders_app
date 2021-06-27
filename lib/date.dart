import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  Date({Key key, this.dateDue}) : super(key: key);
  DateTime dateDue;
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    String day = widget.dateDue.isToday()
        ? "Today"
        : widget.dateDue.isYesterday()
            ? "Yesterday"
            : widget.dateDue.isTomorrow()
                ? 'Tomorrow'
                : DateFormat("dd MMM").format(widget.dateDue);
    String time = DateFormat.jm().format(widget.dateDue);

    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text("${day}, ${time}"),
    );
  }
}

extension DateHelpers on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == this.day &&
        now.month == this.month &&
        now.year == this.year;
  }

  bool isYesterday() {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return yesterday.day == this.day &&
        yesterday.month == this.month &&
        yesterday.year == this.year;
  }

  bool isTomorrow() {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    return tomorrow.day == this.day &&
        tomorrow.month == this.month &&
        tomorrow.year == this.year;
  }
}
