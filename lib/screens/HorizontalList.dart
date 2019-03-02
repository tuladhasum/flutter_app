import 'package:flutter/material.dart';
//https://flutter.dev/docs/cookbook/lists/horizontal-list
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List"),
      ),
      body: Container(
        height: 200.0,
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.redAccent,
            ),
            Container(
              width: 160.0,
              color: Colors.blueAccent,
            ),
            Container(
              width: 160.0,
              color: Colors.orangeAccent,
            ),
            Container(
              width: 200.0,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
