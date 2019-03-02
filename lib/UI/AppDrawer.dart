import 'package:flutter/material.dart';
import 'package:flutter_app/otherpage.dart';
import '../screens/home.dart';
import '../screens/HelloYou.dart';
import '../screens/TripCostCalculator.dart';
import '../screens/TabsController.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Sumit Tuladhar"),
            accountEmail: new Text("sumit@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black26,
              child: new Text("ST"),
            ),
            decoration: new BoxDecoration(color: Colors.amber),
            otherAccountsPictures: <Widget>[
              new CircleAvatar(
                  backgroundColor: Colors.black26, child: new Text("SR")),
              new CircleAvatar(
                backgroundColor: Colors.black26,
                child: new Text("RS"),
              ),
            ],
          ),
          new ListTile(
            title: new Text("Other Page"),
            trailing: new Icon(Icons.arrow_forward),
            leading: new Icon(Icons.home),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new OtherPage("page 1"))),
          ),
          new ListTile(
            title: new Text("Pizza Order"),
            leading: new Icon(Icons.pregnant_woman),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Home())),
          ),
          new ListTile(
            title: new Text("Hello You"),
            leading: new Icon(Icons.help),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new HelloYou())),
          ),
          new ListTile(
            title: new Text("Trip Cost Calculator"),
            leading: new Icon(Icons.airport_shuttle),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new TripCostCalculator())),
          ),
          new ListTile(
            title: new Text("Tabs Controller"),
            leading: new Icon(Icons.tab),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new TabsController())),
          ),
          new ListTile(
            title: new Text("Close"),
            leading: new Icon(Icons.close),
            onTap: () => Navigator.pop(context),
          ),
          new DrawerHeader(child: new Text("Drawer Header"))
        ],
      ),
    );
  }
}
