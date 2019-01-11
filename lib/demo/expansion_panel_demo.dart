import 'package:flutter/material.dart';


class ExpansionPanelItem {
   final String headerText;
   final Widget body;
   bool isExpanded;

   ExpansionPanelItem({
     this.headerText,
     this.body,
     this.isExpanded
   });
}

class ExPansionPanelDemo extends StatefulWidget {
  _ExPansionPanelDemoState createState() => _ExPansionPanelDemoState();
}

class _ExPansionPanelDemoState extends State<ExPansionPanelDemo> {
  
  bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
    void initState() {
      super.initState();
      _expansionPanelItems = <ExpansionPanelItem>[
          ExpansionPanelItem(
            headerText: 'Panel A',
            body: Container(
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Text(
                      'Content for Panel A'
                      ),
                  ),
            isExpanded: false
          ),
          ExpansionPanelItem(
            headerText: 'Panel B',
            body: Container(
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Text(
                      'Content for Panel B'
                      ),
                  ),
            isExpanded: false
          ),
          ExpansionPanelItem(
            headerText: 'Panel C',
            body: Container(
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Text(
                      'Content for Panel C'
                      ),
                  ),
            isExpanded: false
          ),
      ];
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int expandedIndex,bool isExpanded){
                setState(() {
                                  _expansionPanelItems[expandedIndex].isExpanded = !isExpanded;
                                });
              },
              children: _expansionPanelItems.map(
                (ExpansionPanelItem item){
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context, bool isExpanded){
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                          ),
                      );
                    }
                  );
                }
              ).toList(),
                // ExpansionPanel(
                //   headerBuilder: (BuildContext context, bool isExpanded) {
                //      return Container(
                //        padding: EdgeInsets.all(16.0),
                //        child: Text(
                //          'Panel A',
                //          style:Theme.of(context).textTheme.title
                //          ),
                //      ); 
                //   },
                //   body: Container(
                //     padding: EdgeInsets.all(16.0),
                //     width: double.infinity,
                //     child: Text(
                //       'Content for Panel A'
                //       ),
                //   ),
                //   isExpanded: _isExpanded
                // )
              
            )
          ],
        ),
      )
    );
  }
}