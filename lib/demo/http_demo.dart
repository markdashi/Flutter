import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpDemo extends StatefulWidget {
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  
 @override
   void initState() {
     super.initState();
    //  fetchPost();
      fetchPosts()
          .then((value) => print(value));
   } 

   Future<List<Post>> fetchPosts() async {
      final response =  await http.get('https://resources.ninghao.net/demo/posts.json');
      if(response.statusCode == 200) {
         final resonseBody = json.decode(response.body);
         List<Post> posts =  resonseBody['posts']
                              .map<Post>((item) => Post.fromJson(item)).toList();
         return posts;
      } else {
         throw Exception('Fail to fetch posts!');
      }  
   }

   fetchPost() async {
      // final response =  await http.get('https://resources.ninghao.net/demo/posts.json');
      // print('statusCode : ${response.statusCode}');
      // print('body : ${response.body}');
      // print(response.body is String);
      // print(json.decode(response.body) is Map);

      final response = await http.get('https://jx1-test.cloud.sengled.com:443/mp/firmware/versions.json;jsession=c7d18c53-a6ab-4bbd-99b9-368da546e07f');
      print('response : ${response.body}');
   }
  
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Post {
 
   final int id;
   final String title;
   final String author;
   final String description;
   final String imageUrl;

   Post(
     this.id,
     this.title,
     this.author,
     this.description,
     this.imageUrl
     );
    Post.fromJson(Map json)
        : id = json['id'],
        title = json['title'],
        author = json['author'],
        description = json['description'],
        imageUrl = json['imageUrl'];
  //  Map toJson() => {
  //    'title':title,
  //    'description':description
  //  };
}