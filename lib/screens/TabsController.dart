import 'package:flutter/material.dart';
// Source https://flutter.dev/docs/cookbook/design/tabs
class TabsController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs Controller"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.help),),
              Tab(icon: Icon(Icons.airport_shuttle)),
              Tab(icon: Icon(Icons.print))
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.help),
              Icon(Icons.airport_shuttle),
              Icon(Icons.print)
            ],
          ),
        ),
      ),
    );
  }
}
