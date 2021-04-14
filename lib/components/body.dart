import 'package:flutter/material.dart';
import 'package:medi_quest/components/defaultButton.dart';
import 'package:medi_quest/components/splashContent.dart';
import '../components/splashContent.dart';
import '../components/defaultButton.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Keep your Family and Friend Healthy, Let's Begin",
      "image": "assets/image_1.png",
    },
    {
      "text": "Find Expert Practitioner near you",
      "image": "assets/image_2.png",
    },
    {
      "text": "Welcome to MediQuest, Your one stop destination for a fit and healthy life",
      "image": "assets/image_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]['text'],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  DefaultButton(
                    text: "Next",
                    press: (){
                       Navigator.pushNamed(context, "/SignInScreen");
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.amber : Colors.green,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

