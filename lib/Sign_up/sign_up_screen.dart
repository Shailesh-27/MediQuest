import 'package:flutter/material.dart';
import 'package:medi_quest/Sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}