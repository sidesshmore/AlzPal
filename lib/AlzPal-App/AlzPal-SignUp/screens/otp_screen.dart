import 'package:alzpal/AlzPal-App/AlzPal-Location/screens/alzpal_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: Container(
        height: screenHeight * 0.6,
        width: screenWidth,
        decoration: BoxDecoration(
            color: Color(0xff171717), borderRadius: BorderRadius.only(topLeft:Radius.circular(27),topRight: Radius.circular(27))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              'Enter the 5 digit code',
              style:
                  TextStyle(fontSize: screenWidth * 0.076, color: Colors.white),
            ),
            RichText(
              text: TextSpan(
                  text: 'Code generated to connect ',
                  style: TextStyle(
                      fontSize: screenWidth * 0.046,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA3A3A3)),
                  children: [
                    TextSpan(
                      text: 'AlzPal',
                      style: TextStyle(
                        fontSize: screenWidth * 0.046,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff62CA73),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              numberOfFields: 5,
              focusedBorderColor: Color(0xff62CA73),
              cursorColor: Colors.white,
              textStyle:
                  TextStyle(fontSize: screenWidth * 0.05, color: Colors.white),
              fieldWidth: screenWidth * 0.132,
              fieldHeight: screenHeight * 0.061,
              showFieldAsBox: true,
              borderRadius: BorderRadius.circular(10),
              onSubmit: (String verificationCode) {
                // setState(() {
                //   otp = verificationCode;
                // });
                // // log(otp);
              },
            ),
            SizedBox(
              height: screenHeight * 0.15,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlzpalLocation()),
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
                'Connect',
                style: TextStyle(
                  fontSize: screenWidth * 0.065,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
