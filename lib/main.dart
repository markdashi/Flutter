import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNavigatorBar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
          theme: ThemeData(
            primaryColor: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
          ),
      );
    }
}

class Home extends StatelessWidget {

Widget _itemBuilder(BuildContext context,int index) {
  return GestureDetector(
    onTap: ()=>debugPrint('点击了第 $index'),
    child: Container(
      height: 50.0,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 0.5),
      child: Center(
        child: Text('$index'),
      ),
  ),
  );
}
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   tooltip: 'Navigation',
              //   onPressed: null,
              // ),
              title: Text('NIHAO'),
              actions: <Widget>[
                IconButton(
                icon: Icon(Icons.search),
                onPressed: ()=>debugPrint('xx'),
              )
              ],
              elevation: 0.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt))
                ],
              ),
            ),
            body:TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BasicDemo(),
                LayoutDemo(),
                // Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),
                ViewDemo()
              ],
            ),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigatorBarDemo(),
          ),
      );
    }
}


