import 'package:flutter/material.dart';
import 'package:reminders/reminders.dart';

class ReminderCard extends StatefulWidget {
  ReminderCard({Key key, this.reminders, this.index}) : super(key: key);
  Reminders reminders;
  int index;

  @override
  _ReminderCardState createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: widget.reminders.getReminder(widget.index).getColor(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.reminders.getReminder(widget.index).getTitle(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              widget.reminders.getReminder(widget.index).getText(),
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
