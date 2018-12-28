import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200.0,
                maxWidth: 200.0
              ),
              child: Container(
                color:Colors.red
              ),
            )
            // AspectRatio(
            //   aspectRatio: 1.0/1.0,
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // )
          ],
        ),
      );
    }
}

class StackDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          SizedBox(
            child: Container(
              alignment: Alignment(0,0),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.red,
                  width: 1.0,
                  style: BorderStyle.solid
                )
              ),
              width: 100,
              height: 100,
              child: Icon(Icons.power,size:43.0),
            ),
          ),
          Positioned(
            right: 5.0,
            top: 50.0,
            child: IconBadge(
              Icons.pool,
              size:20
            ),
          )
        ],
      );
    }
}

class RowDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          SizedBox(
            child: Container(
              alignment: Alignment(0,0),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.red,
                  width: 1.0,
                  style: BorderStyle.solid
                )
              ),
              width: 100,
              height: 100,
              child: Icon(Icons.power,size:43.0),
            ),
          )
          // IconBadge(
          //   Icons.pool,
          //   size:20
          // ),
          //  IconBadge(
          //   Icons.pool,
          //   size:20
          // ),
          //  IconBadge(
          //   Icons.pool,
          //   size:20
          // )
        ],
      );
    }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon,{
    this.size = 32.0
  });
  @override
    Widget build(BuildContext context) {
      return Container(
        child: Icon(icon,size:size,color: Colors.white,),
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
}