import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
