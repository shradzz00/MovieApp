import 'package:flutter/material.dart';
import 'package:movieapp/views/landing_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData.dark(),
      home: SplashScreens(),
    );
  }
}

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LandingPage(),
      title: Text('Welcome to Movie App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
    );
  }
}
