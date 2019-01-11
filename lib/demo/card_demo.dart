import 'package:flutter/material.dart';
import '../models/post.dart';

class CardDemo extends StatefulWidget {
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: ListView(
          children: posts.map((post){
            return Card(
              elevation: 2.0,
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0/9.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0)
                      ),
                      child: Image.network(post.imageUrl,fit: BoxFit.cover,),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      post.description,
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,
                      ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Like'.toUpperCase()),
                        onPressed: (){},
                      ),
                      FlatButton(
                        child: Text('Read'.toUpperCase()),
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList()
        ),
      ),
    );
  }
}