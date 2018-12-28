import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://resources.ninghao.org/images/contained.jpg'),
            alignment: Alignment.topCenter,
            // repeat: ImageRepeat.noRepeat
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight 
              )
          )
        ),
        //color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
              // color: Colors.blue,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(12.0),
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(10.0, 1.0),
                //     color: Colors.red,
                //     blurRadius: 30, // > 0
                //     spreadRadius: 0 // -1
                //   )
                // ],
                border: Border.all(
                  color: Colors.red,
                  width: 1.0,
                  style: BorderStyle.solid
                ),
                shape: BoxShape.circle,
                // gradient: RadialGradient(
                //     colors: [
                //       Colors.blue,
                //       Colors.red
                //     ])
                // )
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.black
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            )
          ],
        ),
      );
    }
}
class RichTextDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return RichText(
        text: TextSpan(
          text: 'wangjf',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
              text: '@sengled.com',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey
              )
            )
          ]
        ),
      );
    }
}

class TextDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Text(
        '君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
        textAlign: TextAlign.right,
        );
    }
}

