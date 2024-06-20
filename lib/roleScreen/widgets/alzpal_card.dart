import 'package:flutter/material.dart';

class AlzpalCard extends StatelessWidget {
  const AlzpalCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.243,
      width: screenWidth * 0.916,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        color: Color(0xff62CA73),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/oldman.png',
                height: screenHeight * 0.210,
                width: screenWidth * 0.344,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.020,
              ),
              Container(
                margin: EdgeInsets.only(right: screenWidth*0.1666),
                child: Text(
                  'AlzPal',
                  style: TextStyle(
                    fontSize: screenWidth * 0.09,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth*0.072),
                width: screenWidth*0.5,
                child: Text(
                  'Our cherished companion, navigating life with courage, grace, and resilience.',
                  style: TextStyle(color: Colors.white,fontSize: screenWidth*0.045),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// Our cherished companion, navigating life with courage, grace, and resilience.