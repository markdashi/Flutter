import 'package:flutter/material.dart';
import '../models/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _buildItemBuilder(BuildContext context,int index) {
  return Container(
    margin: EdgeInsets.all(16.0),
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Image.network(posts[index].imageUrl),
        SizedBox(height: 16.0),
        Text(
          posts[index].title,
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(height: 16.0)
      ],
    ),
  );
}  
    @override
    Widget build(BuildContext context) {
      return  ListView.builder(
              itemCount: posts.length,
              itemBuilder: _buildItemBuilder,
            );
    }
}