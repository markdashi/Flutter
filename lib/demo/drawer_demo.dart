import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('header'.toUpperCase()),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      image: DecorationImage(
                        image: NetworkImage('https://resources.ninghao.org/images/contained.jpg'),
                        fit:BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.yellow[400], 
                          BlendMode.hardLight
                          )
                      )
                    ),
                  ),
                  ListTile(
                    title: Text('Messages',textAlign: TextAlign.end,),
                    trailing: Icon(Icons.message,color:Colors.black12, size:22.0),
                    onTap: ()=>Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text('Favorite',textAlign: TextAlign.end,),
                    trailing: Icon(Icons.favorite,color:Colors.black12, size:22.0),
                  ),
                  ListTile(
                    title: Text('Settings',textAlign: TextAlign.end,),
                    trailing: Icon(Icons.settings,color:Colors.black12, size:22.0),
                  )
                ],
              ),
            );
    }
}