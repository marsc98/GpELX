//import 'package:doglife/pages/login.page.dart';
import 'package:flutter/material.dart';

import 'Pages/login.page.dart';

import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new MyApp(),
        image: new Image(
          image: AssetImage("lib/imagens/m1.png"),
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 70.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.green.withOpacity(0.8));
  }
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //this widget is the root of your aplication
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transforma',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
