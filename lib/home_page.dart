import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reminders/reminder_card.dart';
import 'package:reminders/reminders.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Reminders reminders = Reminders();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ScrollAppBar(
        controller: controller,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 0, top: 10),
            child: Text(
              'Reminders',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12),
              child: StaggeredGridView.countBuilder(
                  controller: controller,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 12,
                  itemCount: reminders.getReminders().length,
                  itemBuilder: (context, index) {
                    return ReminderCard(
                      reminders: reminders,
                      index: index,
                    );
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(1, index.isEven ? 0.8 : 1.2);
                  }),
            ),
          ),
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
