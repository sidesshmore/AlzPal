import 'package:alzpal/roleScreen/screens/roleScreen.dart';
import 'package:flutter/material.dart';

class Onscreen3 extends StatelessWidget {
  final PageController controller;
  const Onscreen3({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.031,
        backgroundColor: const Color(0xff262626),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/Onboarding-3.png',
            height: screenHeight * 0.55,
            width: screenWidth,
          ),
          SizedBox(
            height: screenHeight * 0.080,
          ),
          RichText(
            text: TextSpan(
              text: 'Empowering Every Memory!',
              style: TextStyle(
                  fontSize: screenWidth * 0.068,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          SizedBox(
            width: screenWidth * 0.688,
            child: Text(
              "Cherish and maintain life's precious moments.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.048,
                fontWeight: FontWeight.w600,
                color: const Color(0xffA3A3A3),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.024,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rolescreen()),
              );
            },
            style: TextButton.styleFrom(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0xff62CA73),
            ),
            child: Text(
              'Get Started',
              style: TextStyle(
                fontSize: screenWidth * 0.065,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
