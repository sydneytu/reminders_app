import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reminders/reminder_card.dart';
import 'package:reminders/reminders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.white.withOpacity(0.8))),
      home: HomePage(),
    );
  }
}

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8.0),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular((25))),
          child: BottomAppBar(
            elevation: 10,
            color: Colors.white.withOpacity(0.8),
            shape: CircularNotchedRectangle(),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
