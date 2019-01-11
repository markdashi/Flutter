import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {

bool _buildItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: true,
              onChanged: (value){ },
            ),
            CheckboxListTile(
              value:_buildItemA,
              onChanged: (value){
                setState(() {
                                  _buildItemA = value;
                                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _buildItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                value: _buildItemA,
                onChanged: (value){
                  setState(() {
                                      _buildItemA = value;
                                    });
                },
                activeColor: Colors.black,
              )
              ],
            )  
          ],
        ),
      ),
    );
  }
}