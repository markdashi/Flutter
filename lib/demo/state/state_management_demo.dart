import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
_StateManagementDemoState createState() => _StateManagementDemoState();
}
  


class _StateManagementDemoState extends State<StateManagementDemo>{
    int _times = 0;
    void increaseCounter(){
       setState(() {
                _times +=1;
              });
    }
    @override
      Widget build(BuildContext context) {
      return CounterProvide(
            count: _times,
            counterCallBack: increaseCounter,
            child: Scaffold(
            appBar: AppBar(
              title: Text('StateManagementDemo'),
              elevation: 0.0,
            ),
            body: CounterWrap(),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                setState(() {
                                _times +=1;
                              });
              },
            ),
          ),
        );
      }
}

class CounterWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
              child: ActionWrap(),
          );
  }
}

class ActionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = CounterProvide.of(context).count;
    final _increaseCounter = CounterProvide.of(context).counterCallBack;
    return ActionChip(
                label: Text('$_counter'),
                onPressed: _increaseCounter,
              );
  }

}

class CounterProvide extends InheritedWidget {

  final int count;
  final VoidCallback counterCallBack;
  final Widget child;
  CounterProvide({
    this.count,
    this.counterCallBack,
    this.child
  }):super(child:child);

  static CounterProvide of(BuildContext context) =>
    context.ancestorWidgetOfExactType(CounterProvide);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}