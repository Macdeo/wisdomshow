import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        //actions: <Widget>[],
      ),
      body: WebviewScaffold(
          url: 'https://wisdomshow.org/demoo.php',
          withJavascript: true,
          hidden: true,
      ),
    );
  }
}

