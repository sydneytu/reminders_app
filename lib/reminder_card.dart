import 'package:flutter/material.dart';
import 'package:reminders/reminders.dart';

import 'date.dart';
import 'detail_page.dart';

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
    return GestureDetector(
      onTap: () {
        print('Clicked');
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, a, b) => DetailPage(
                    reminder: widget.reminders.getReminder(widget.index))));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: widget.reminders.getReminder(widget.index).getColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.reminders.getReminder(widget.index).getTitle(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  // TODO: add spacing
                  Text(
                    widget.reminders.getReminder(widget.index).getText(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Date(
                  dateDue: widget.reminders.getReminder(widget.index).getDate(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
