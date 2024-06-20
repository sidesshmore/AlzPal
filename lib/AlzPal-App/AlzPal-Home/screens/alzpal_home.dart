import 'package:flutter/material.dart';

class AlzpalHome extends StatefulWidget {
  const AlzpalHome({super.key});

  @override
  State<AlzpalHome> createState() => _AlzpalHomeState();
}

class _AlzpalHomeState extends State<AlzpalHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.024,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Who is this?',
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Image.asset(
            'assets/Who-is-this.png',
            width: screenWidth * 0.881,
            height: screenHeight * 0.534,
          ),
          SizedBox(
            height: screenHeight * 0.015,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff62CA73),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/Camera.png"),
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Take Photo',
                      style: TextStyle(
                        fontSize: screenWidth * 0.090,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
