import 'package:flutter/material.dart';


class ChipDemo extends StatefulWidget {
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];
  String _action = 'Nothing';
  List<String> _filter = [];
  String _choice = 'Apple';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 10.0,
              runSpacing: 0.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('junfei'),
                  avatar: CircleAvatar(
                    child: Text('斐'),
                    backgroundColor: Colors.grey,
                  ),
                ),
                
                Chip(
                  label: Text('俊飞'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=29045763,1974091333&fm=26&gp=0.jpg'
                    ),
                  ),
                ),
               
                Chip(
                  label: Text('俊飞'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=29045763,1974091333&fm=26&gp=0.jpg'
                    ),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){
                    debugPrint('delete');
                  },
                  // deleteIcon: Icon(Icons.delete),
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  height: 80.0,
                  color: Colors.red,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                                     _tags.remove(tag);             
                                                });
                      },
                    );
                  }
                  ).toList(),
                ),
                Divider(
                  height: 80.0,
                  color: Colors.red,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState(() {
                                      _action = tag;            
                                                });
                      },
                    );
                  }
                  ).toList(),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.red,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_filter.toString()}'),
                ),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _filter.contains(tag),
                      onSelected: (value){
                         setState(() {
                                if(_filter.contains(tag)){
                            _filter.remove(tag);
                          } else {
                            _filter.add(tag);
                          }                     
                                                  });
                      },
                    );
                  }
                  ).toList(),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.red,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: _tags.map((tag){
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black,
                      onSelected: (value){
                         setState(() {
                                     _choice = tag;               
                                                  });
                      },
                    );
                  }
                  ).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
                      _tags = [
                        'Apple',
                        'Banana',
                        'Lemon'
                      ];
                      _filter = [];
                    });
        },
      ),
    );
  }
}