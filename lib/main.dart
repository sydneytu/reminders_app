import 'package:flutter/material.dart';
import 'package:reminders/bottom_nav.dart';

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
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
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
