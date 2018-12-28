import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return PageView(
        // pageSnapping: false,
        // reverse: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (page)=>debugPrint('Page: $page'),
        children: <Widget>[
          Container(
            alignment: Alignment(0.0, 0.0),// Alignment.center
            color: Colors.green[100],
            child: Text('ONE',style: TextStyle(color: Colors.white,fontSize: 30.0),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.brown[100],
            child: Text('TWO',style: TextStyle(color: Colors.white,fontSize: 30.0),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.cyan[100],
            child: Text('THREE',style: TextStyle(color: Colors.white,fontSize: 30.0),),
          )
        ],
      );
    }
}