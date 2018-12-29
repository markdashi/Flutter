import 'package:flutter/material.dart';
import '../models/post.dart';

class ViewDemo extends StatelessWidget {

  Widget _gridItembuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
    );
  }
  @override
    Widget build(BuildContext context) {
      return GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: posts.length,
        itemBuilder: _gridItembuilder,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 3,
          maxCrossAxisExtent: 200.0,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0
        ),
      );
    }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
        return List.generate(length, (int index){
          return Container(
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: Text('Item $index',style: TextStyle(fontSize: 20.0,color: Colors.white),),  
          );
        });
    }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return GridView.extent(
        maxCrossAxisExtent: 375.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: _buildTitles(100),
      );
    }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
      return List.generate(length, (int index){
        return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text('Item $index',style: TextStyle(fontSize: 20.0,color: Colors.white),),  
        );
      });
  }
  @override
    Widget build(BuildContext context) {
      return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: _buildTitles(100),
      );
    }
}

class PageBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
            ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }
  @override
    Widget build(BuildContext context) {
      return PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder,
      );
    }
}

class PageViewDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return PageView(
        // pageSnapping: false,
        // reverse: true,
        scrollDirection: Axis.horizontal,
        controller: PageController(
          initialPage: 1,
          keepPage: false,
          viewportFraction: 0.85
        ),
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