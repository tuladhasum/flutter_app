import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './UI/AppDrawer.dart';
import './screens/HorizontalList.dart';
import './screens/TripCostCalculator.dart';
import './screens/TabsController.dart';
import './screens/GridListPage.dart';
import './screens/todolist.dart';
import './screens/FlutterLayout.dart';
import './screens/gesture_animation.dart';
import './screens/http_request.dart';
import './screens/webview_example.dart';
import './screens/url_launcher_example.dart';

void main() {
  runApp(new FriendlychatApp());
}

class LoadAppSpashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: ChatScreen(),
      title: Text(
        "Welcome to my Flutter App",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      loaderColor: Colors.green,
    );
  }
}

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.deepPurple,
      title: "Vajra",
      debugShowCheckedModeBanner: false,
      home: new LoadAppSpashScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Application"),
      ),
      backgroundColor: Colors.white,
      body: new HomepageList(),
      drawer: new AppDrawer(),
    );
  }
}

class HomepageList extends StatelessWidget {
  const HomepageList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //https://flutter.dev/docs/cookbook/lists/basic-list
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Trip Cost Calculator'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new TripCostCalculator())),
          ),
          ListTile(
            leading: Icon(Icons.tab),
            title: Text('Tab Controller'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new TabsController())),
          ),
          ListTile(
            leading: Icon(Icons.swap_horizontal_circle),
            title: Text('Horizontal List'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new HorizontalList())),
          ),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('Grid List'),
            onTap: () => Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new GridListPage())),
          ),
          ListTile(
            leading: Icon(Icons.today),
            title: Text("Pluralsight Todo List"),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new TodoList())),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Flutter Layout 101"),
            onTap: () => Navigator.push(
                context,
                new MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) => new FlutterLayout())),
          ),
          ListTile(
            leading: Icon(Icons.gesture),
            title: Text("Gestures & Animations"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => GestureAnimation())),
          ),
          ListTile(
            leading: Icon(Icons.http),
            title: Text("HTTP Request API"),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HttpRequest(
                          post: fetchPost(),
                        ))),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Web View Plugin'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WebViewExample())),
          ),
          ListTile(
            leading: Icon(Icons.open_with),
            title: Text('URL Launcher'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => UrlLauncherExample())),
          )
        ],
      ),
    );
  }
}
