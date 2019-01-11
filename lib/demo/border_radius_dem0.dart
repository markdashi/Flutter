import 'package:flutter/material.dart';
import '../models/post.dart';

class BorderRadiusDemo extends StatefulWidget {
  _BorderRadiusDemoState createState() => _BorderRadiusDemoState();
}

class _BorderRadiusDemoState extends State<BorderRadiusDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BorderRadiusDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
        children: posts.map((post){
          return Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(post.imageUrl),
              
              ),
          );
        }).toList(),
      ),
      ),
    );
  }
}