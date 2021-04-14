import 'package:flutter/material.dart';
import 'package:medi_quest/forgot_password/components/body.dart';


class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Forgot Password"),
        ),
        body: Body(),
    );
  }
}