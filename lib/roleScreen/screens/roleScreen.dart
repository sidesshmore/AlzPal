import 'package:alzpal/AlzPal-App/AlzPal-SignUp/screens/otp_screen.dart';
import 'package:alzpal/Caregiver-App/Caregiver-SignUp/screens/signup.dart';
import 'package:alzpal/roleScreen/widgets/alzpal_card.dart';
import 'package:alzpal/roleScreen/widgets/caregiver_card.dart';
import 'package:flutter/material.dart';

class Rolescreen extends StatelessWidget {
  const Rolescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.050,
        backgroundColor: const Color(0xff262626),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'YOU?',
                style: TextStyle(
                  fontSize: screenWidth * 0.065,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CaregiverSignUp(),
                  ),
                );
              },
              child: CaregiverCard()),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Image.asset(
            'assets/Dashed_Line.png',
            width: screenWidth * 0.91,
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpScreen(),
                ),
              );
            },
            child: AlzpalCard(),
          ),
        ],
      ),
    );
  }
}
