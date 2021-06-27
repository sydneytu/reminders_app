import 'package:flutter/material.dart';
import 'package:reminders/reminder.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.reminder}) : super(key: key);
  Reminder reminder;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              widget.reminder.getTitle(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            floating: true,
            // backgroundColor: Colors.white,
            expandedHeight: 75,
          ),
        ],
      ),
    );
  }
}
