import 'package:flutter/material.dart';
class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}
class AnimationDemoHome extends StatefulWidget {
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>  
 with TickerProviderStateMixin {
  
  AnimationController animationDemoController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;


  @override
    void initState() {
      super.initState();
      animationDemoController = AnimationController(
        // value: 32,
        // lowerBound: 32.0,
        // upperBound: 100.0,
        duration: Duration(milliseconds: 1000),
        vsync: this
      );


     curve = CurvedAnimation(parent: animationDemoController,curve: Curves.bounceOut);
     animation = Tween(begin: 32.0,end: 100.0).animate(curve);
     animationColor = ColorTween(begin: Colors.red,end: Colors.red[100]).animate(curve);

      animationDemoController.addListener((){
         //print('${animationDemoController.value}');
         setState(() {
                    
                  });
      });
      // animationDemoController.forward();
      animationDemoController.addStatusListener((AnimationStatus status){
          print('AnimationStatus: ${status}');
      });
    }

   @override
   void dispose() { 
     super.dispose();
     animationDemoController.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      AnimatedHeart(
        animations: [
            animation,
            animationColor
        ],
        controller: animationDemoController,
      )
      // IconButton(
      //   icon: Icon(Icons.favorite),
      //   iconSize: animation.value,
      //   color: animationColor.value,
      //   onPressed: (){
      //       switch (animationDemoController.status) {
      //         case AnimationStatus.completed:
      //           animationDemoController.reverse();
      //           break;
      //         default:
      //           animationDemoController.forward();
      //       }
      //   },
      // )
      // ActionChip(
      //   label: Text('${animationDemoController.value}'),
      //   onPressed: (){
      //     animationDemoController.forward();
      //   },
      // ),
    );
  }
}
// 封装一个动画小部件
class AnimatedHeart extends AnimatedWidget {

  final List<Animation> animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller
  }) : super(listenable:controller);

  @override
    Widget build(BuildContext context) {
      return IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animations[0].value,
        color: animations[1].value,
        onPressed: () async{
          print(controller.status);
          if (controller.status == AnimationStatus.forward || controller.status == AnimationStatus.reverse) {
             return;
          }
            await controller.forward().orCancel;
            await controller.reverse().orCancel;
            // switch (controller.status) {
            //   case AnimationStatus.completed:
            //     controller.reverse();
            //     break;
            //   default:
            //     controller.forward();
            // }
        },
      );
    }
}