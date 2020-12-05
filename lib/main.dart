import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:wisdomshow/ui/demo.dart';

import 'ui/welcomeScreen/welcome.dart';
//import 'package:wisdomshow/ui/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisdom Show',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/Welcome': (BuildContext context) => Welcome(),
        '/Demo': (BuildContext context) => Demo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "GO DEEP! WIN CASH!",
        description:
            "The Wisdom Show is a Bible Game Show for those who want to GO DEEP, GROW WISE, and WIN CASH, starting online to our T.V show.",
        pathImage: "images/letsgos.png",
        heightImage: 300,
        backgroundColor: Color(0xff0648B3),
      ),
    );
    slides.add(
      new Slide(
        title: "LET'S GO",
        // description:
        //     "1. Play online as often as you want to improve your Bible knowledge \n\n  2. Answer all questions and be on the Wisdom Show \n\n 3. Great rewards await the wise. You have an awesome opportunity to win cash prizes",
        pathImage: "images/letgo.png",
        heightImage: 400,
        backgroundColor: Color(0xff0000ff),
      ),
    );
    slides.add(
      new Slide(
        title: "HOW TO PLAY",
        description:
            "1. Type in your username and password. \n\n 2. Buy your pin code and input it. \n\n 3. Play the game.",
        pathImage: "images/WisdomShowsmall.png",
        heightImage: 300,
        backgroundColor: Color(0xffEE5050),
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/Welcome', (Route<dynamic> route) => false);
  }

  void onSkipPress() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/Welcome', (Route<dynamic> route) => false);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return Welcome();
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      nameDoneBtn: "START",
      borderRadiusDoneBtn: 30.0,
      styleNameDoneBtn: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
      onSkipPress: this.onSkipPress,

      // Dot indicator
      colorDot: Colors.grey,
      colorActiveDot: Colors.white,
      sizeDot: 12.0,
    );
  }
}
