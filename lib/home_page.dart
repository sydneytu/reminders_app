import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:reminders/reminder_card.dart';
import 'package:reminders/reminders.dart';
import 'bottom_navbar.dart';

double _crossAxisSpacing = 8, _mainAxisSpacing = 8, _aspectRatio = 1.4;
int _crossAxisCount = 2;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Reminders reminders = Reminders();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    var width = (screenWidth - ((_crossAxisCount) * _crossAxisSpacing)) /
        _crossAxisCount;
    var height = width / _aspectRatio;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        // TODO: fix bottom row of scrolling
        slivers: [
          SliverAppBar(
            title: Text(
              'Reminders',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            floating: true,
            backgroundColor: Colors.white,
            expandedHeight: 75,
          ),
          SliverGrid(
            // TODO: fix spacing
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: width / height,
              crossAxisSpacing: 5,
              mainAxisSpacing: 8,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ReminderCard(
                reminders: reminders,
                index: index,
              );
            }, childCount: reminders.getReminders().length),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // elevation: 2.0,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.orange,
        ),
        // backgroundColor: Colors.white,
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Padding(
// // padding: const EdgeInsets.only(left: 12, bottom: 0, top: 10),
// child: Text(
// 'Reminders',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 35,
// ),
// ),
// ),
// Expanded(
// child: Container(
// margin: EdgeInsets.all(12),
// child: StaggeredGridView.countBuilder(
// controller: controller,

// itemCount: reminders.getReminders().length,
// itemBuilder: (context, index) {
// return ReminderCard(
// reminders: reminders,
// index: index,
// );
// },
// staggeredTileBuilder: (index) {
// return StaggeredTile.count(1, index.isEven ? 0.8 : 1.2);
// }),
// ),
// ),
// ],
// ),
