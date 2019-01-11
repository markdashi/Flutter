import 'package:flutter/material.dart';
import '../models/post.dart';

class DataTableDemo extends StatefulWidget {
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
              DataTable(
                columns: [
                  DataColumn(
                    label: Text('Title')
                  ),
                  DataColumn(
                    label: Text('Author')
                  ),
                  DataColumn(
                    label: Text('Image')
                  )
                ],
                rows: posts.map((post){
                  return DataRow(
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.title)),
                      DataCell(Image.network(post.imageUrl))
                    ]
                  );
                }).toList(),
              )
          ],
        ),
      ),
    );
  }
}