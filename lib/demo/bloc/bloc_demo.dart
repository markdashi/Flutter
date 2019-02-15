import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocDemo'),
        elevation: 0.0,
      ),
      body: Home(),
    );
  }
}
class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: (){
            Toast.show('hello woeld', context,duration: 3);
          },
        ),
      );
    }
}