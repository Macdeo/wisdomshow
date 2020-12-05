import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        //actions: <Widget>[],
      ),
      body: WebviewScaffold(
          url: 'https://wisdomshow.org/user-login.php',
          withJavascript: true,
          hidden: true,
      ),
    );
  }
}

