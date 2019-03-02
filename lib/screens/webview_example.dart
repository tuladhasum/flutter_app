import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'http://tetrade.com.np',
      appBar: AppBar(
        title: Text('Vajra Pashmina'),
      ),
      withZoom: false,
      withLocalStorage: true,
      hidden: true,
        initialChild: Container(
          color: Colors.redAccent,
          child: const Center(
            child: Text('Waiting.....'),
          ),
        )
    );
  }
}
