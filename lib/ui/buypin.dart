import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class BuyPin extends StatefulWidget {
  @override
  _BuyPinState createState() => _BuyPinState();
}

class _BuyPinState extends State<BuyPin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisdom Show'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        //actions: <Widget>[],
      ),
      body: WebviewScaffold(
          url: 'https://wisdomshow.org/buy-pin.php',
          withJavascript: true,
          hidden: true,
      ),
    );
  }
}

