import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medi_quest/components/body.dart';

class Splash extends StatefulWidget {
  
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
