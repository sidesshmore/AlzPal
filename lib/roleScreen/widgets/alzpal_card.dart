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
        children: [
          Column(
            children: [
              Image.asset(
                'assets/oldman.png',
                height: screenHeight * 0.196,
                width: screenWidth * 0.344,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'AlzPal',
                    style: TextStyle(
                      fontSize: screenWidth * 0.09,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Our cherished companion, navigating life with courage, grace, and resilience.