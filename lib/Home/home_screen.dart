import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_quest/Home/components/category_card.dart';
import 'package:medi_quest/Home/components/doctor_card.dart';
import 'package:medi_quest/Home/components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/menu.svg'),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/ProfileScreen");
                      },
                      child: SvgPicture.asset('assets/icons/profile.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Color(0xff1E1C61),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }
}

buildCategoryList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        CategoryCard(
            'Dental\nSurgeon', 'assets/icons/dental_surgeon.png', Colors.blue),
        SizedBox(
          width: 10,
        ),
        CategoryCard(
          'Heart\nSurgeon',
          'assets/icons/heart_surgeon.png',
          Color(0xffFFB167),
        ),
        SizedBox(
          width: 10,
        ),
        CategoryCard('Eye\nSpecialist', 'assets/icons/eye_specialist.png',
            Colors.orange),
        SizedBox(
          width: 10,
        ),
        CategoryCard(
            'Neuro\nSurgeon', 'assets/icons/dental_surgeon.png', Colors.blue),
        SizedBox(
          width: 30,
        ),
      ],
    ),
  );
}

buildDoctorList() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: <Widget>[
        DoctorCard(
          'Dr. Shweta Singh ',
          'Heart Surgeon - Flower Hospitals',
          'assets/doctor1.png',
          Colors.blue,
        ),
        SizedBox(
          height: 20,
        ),
        DoctorCard(
          'Dr. Smit Patel',
          'Dental Surgeon - Flower Hospitals',
          'assets/doctor2.png',
          Colors.yellow,
        ),
        SizedBox(
          height: 20,
        ),
        DoctorCard(
          'Dr. Smriti Irani',
          'Eye Specialist - Flower Hospitals',
          'assets/doctor3.png',
          Colors.orange,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
