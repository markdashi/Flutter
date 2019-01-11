import 'package:flutter/material.dart';
import '../demo/checkbox_demo.dart';
import '../demo/datetime_demo.dart';
import '../demo/simple_dialog_demo.dart';
import '../demo/bottomsheet_demo.dart';
import '../demo/expansion_panel_demo.dart';
import '../demo/opcity.dart';
import '../demo/chip_demo.dart';
import '../demo/data_table_demo.dart';
import '../demo/card_demo.dart';
import '../demo/border_radius_dem0.dart';
import '../demo/stepper_demo.dart';

class MaterialComponets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MaterialComponets'),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            ListItem(title: 'StepperDemo',page: StepperDemo(),),
            ListItem(title: 'BorderRadiusDemo',page: BorderRadiusDemo(),),
            ListItem(title: 'CardDemo',page: CardDemo(),),
            ListItem(title: 'DataTableDemo',page: DataTableDemo(),),
            ListItem(title: 'ChipDemo',page: ChipDemo(),),
            ListItem(title: 'OpcaticyDemo',page: OpcaticyDemo(),),
            ListItem(title: 'ExPansionPanelDemo',page: ExPansionPanelDemo(),),
            ListItem(title: 'BottomSheetDemo',page: BottomSheetDemo(),),
            ListItem(title: 'simpleDiolog',page: SimpleDialogDemo(),),
            ListItem(title: 'dateTime',page: DateTimeDemo(),),
            ListItem(title: 'checkbox',page: CheckboxDemo(),),
            ListItem(title: 'Button', page: ButtonDemo(),),
            ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo(),)
          ],
        ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _floatingActionButton = new FloatingActionButton(
      onPressed: (){},
      elevation: 0.0,
      child: Icon(Icons.add),
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0)
      // ),
    );

    final _floatingActionButtonExtended = FloatingActionButton.extended(
      icon: Icon(Icons.add),
      label: Text('Add'),
      elevation: 0.0,
      onPressed: (){},
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Widget flatButtonRow = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: Text('Button'),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                ),
                FlatButton.icon(
                  onPressed: (){},
                  label: Text('Button'),
                  icon: Icon(Icons.add),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            );
    final Widget rasiedButton = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      // shape: BeveledRectangleBorder(
                      //   borderRadius: BorderRadius.circular(1.0)
                      // )
                      shape: StadiumBorder()
                    )
                  ),
                  child: RaisedButton(
                 child: Text('Button'),
                  onPressed: (){},
                  // splashColor: Colors.grey,
                  //color: Theme.of(context).accentColor,
                  //textColor: Colors.yellow,
                  // textTheme: ButtonTextTheme.primary,
                  // elevation: 0.0,
                ),
                ),
                SizedBox(width: 32.0,),
                RaisedButton.icon(
                  onPressed: (){},
                  label: Text('Button'),
                  icon: Icon(Icons.add),
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                )
              ],
            ); 
    final Widget outlineButtonDemo =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){},
                  child:Text('Button'),
                  shape: CircleBorder(),
                ),
                SizedBox(width: 32.0,),
                OutlineButton.icon(
                  onPressed: (){},
                  label: Text('Button'),
                  icon: Icon(Icons.add),
                  splashColor: Colors.grey,
                  borderSide: BorderSide(
                    color: Colors.black38,
                  ),
                  
                )
              ],
            );    
    
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            FlatButton(
              color: Colors.orange,
              onPressed: (){},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),),
              ),
              shape: StadiumBorder(),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              color: Colors.orange,
              onPressed: (){},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),),
              ),
              shape: StadiumBorder(),
            )
          ],
        ),
      ),
    );
  }
}
class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {

  final String title;
  final Widget page;
  ListItem({
    this.title,
    this.page
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> page)
        );
      },
    );
  }
}