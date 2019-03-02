import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final String mtext;
  String ptext = "";
  OtherPage(this.mtext);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Other Page"),
        ),
        body: Material(
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              sayHello(),
              style: TextStyle(fontSize: 50.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if (hour < 23) {
      hello = "Good Morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }

    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now " + hour.toString() + ":" + minutes + ". \n" + hello;
  }
}
