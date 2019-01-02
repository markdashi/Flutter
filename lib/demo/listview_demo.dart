import 'package:flutter/material.dart';
import '../models/post.dart';
import '../demo/post_show.dart';

class ListViewDemo extends StatelessWidget {
  Widget _buildItemBuilder(BuildContext context,int index) {
  return Container(
    margin: EdgeInsets.all(16.0),
    color: Colors.white,
    child: Stack(
      children: <Widget>[
        Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16/9,
          child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
        ),
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
    Positioned.fill(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          highlightColor: Colors.white.withOpacity(0.1),
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => PostShow(post: posts[index],)
              )
            );
          },
        ),
      ),
    )
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