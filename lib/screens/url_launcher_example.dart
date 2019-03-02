import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Launch URL'),
            onTap: _launchUrl,

          )
        ],
      ),
    );
  }

   _launchUrl() async {
    const url = 'https://flutter.io';

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
