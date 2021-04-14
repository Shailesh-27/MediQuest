import 'package:flutter/material.dart';
import 'package:medi_quest/constant.dart';
import 'package:medi_quest/otp/components/otp_form.dart';
import 'package:medi_quest/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Veification",
                style: headingStyle,
              ),
              Text("We sent your otp to +1 898 860 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This otp will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
