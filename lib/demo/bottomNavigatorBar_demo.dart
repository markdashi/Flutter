import 'package:flutter/material.dart';

class BottomNavigatorBarDemo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BottomNavigatorBarDemo();
    }
}

class _BottomNavigatorBarDemo extends State<BottomNavigatorBarDemo> {

  int _currentIndex = 0;
  void _onHandleTap(int index) {
    setState(() {
          _currentIndex = index;
        });
  }

  @override
    Widget build(BuildContext context) {
      return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.black,
              currentIndex: _currentIndex,
              onTap: _onHandleTap,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  title: Text('Explore')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  title: Text('History')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  title: Text('List')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('My')
                )
              ],
            );
    }
}