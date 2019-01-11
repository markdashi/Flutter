import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetGlobalKey = GlobalKey<ScaffoldState>();

  void _modalBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('option A'),
                ),
                ListTile(
                  title: Text('option B'),
                ),
                ListTile(
                  title: Text('option C'),
                )
              ],
            ),
          );
        }
      );
  }

  void _openBottomSheet() {
      _bottomSheetGlobalKey.currentState.
      showBottomSheet((BuildContext context) {
        return BottomAppBar(
          elevation: 0.0,
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(
                  width: 16.0,
                ),
                Text('01:30 / 03:30'),
                Expanded(
                  child: Text('Fix you - coldPlay',textAlign: TextAlign.right,),
                )
              ],
            ),
          ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetGlobalKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        
              FlatButton(
                child: Text('open BottomSheet'),
                onPressed: _openBottomSheet,
              ),
              FlatButton(
                child: Text('Modal BottomSheet'),
                onPressed: _modalBottomSheet,
              )
            ],
          ),
        ),
      ),
    );
  }
}