import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
          url: 'https://wisdomshow.org/user-register.php',
          withJavascript: true,
          hidden: true,
      ),
    );
  }
}

