import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
      appBar: AppBar(
        title: Text('StateDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: WrapperCounter(),
      ),
      floatingActionButton: ScopedModelDescendant<CounterModel>(
        rebuildOnChange: false,
        builder: (context, _ , model) => FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: model.increaseCount,
      ),
      ),
    ),
    );
  }
}

class WrapperCounter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
      label: Text('${model.count}'),
      onPressed: model.increaseCount,
    ),
    );
  }
}
class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count ++;
    notifyListeners();// 通知重绘所有的监听者
  }
}


