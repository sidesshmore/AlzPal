import 'package:flutter/material.dart';

class CaregiverCard extends StatelessWidget {
  const CaregiverCard({super.key});

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
                'assets/lady.png',
                height: screenHeight * 0.196,
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
                margin: EdgeInsets.only(right: screenWidth*0.038),
                child: Text(
                  'Caregiver',
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
                  'The unsung hero providing unwavering love, support, and care every step of the way.',
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

// The unsung hero providing unwavering love, support, and care every step of the way.
