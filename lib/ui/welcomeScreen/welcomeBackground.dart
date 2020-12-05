import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    @required Key key, this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This is to make the screen size fit to all device
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              child: Image.asset(
            "images/top.png",
            width: size.width * 1,
          )),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //     child: Image.asset(
          //   "images/bottom.png",
          //   width: size.width * 1,
          // )),
          child,
        ],
      ),
    );
  }
}
