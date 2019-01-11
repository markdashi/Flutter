import 'package:flutter/material.dart';
import 'dart:math';
class OpcaticyDemo extends StatefulWidget {
  _OpcaticyDemoState createState() => _OpcaticyDemoState();
}

class _OpcaticyDemoState extends State<OpcaticyDemo> {

double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OpcaticyDemo'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: opacity,
              child: Text('please enter password~',style: TextStyle(color: Colors.red),),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: (){
                setState(() {
                                  opacity = 1;
                                });
              },
              child: Container(
                width: double.infinity,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
              ),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
