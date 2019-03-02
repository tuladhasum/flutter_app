import 'package:flutter/material.dart';

//https://flutter.dev/docs/cookbook/lists/grid-lists
class GridListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid List Page"),
      ),
      body: GridView.count(
          crossAxisCount: 2,
        children: List.generate(100, (index){
          return Center(
            child: Text(
              'Index $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        })
      ),
    );
  }
}
