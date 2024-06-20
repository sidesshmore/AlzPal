import 'package:alzpal/Caregiver-App/Caregiver-Home/screens/add_pal.dart';
import 'package:alzpal/Caregiver-App/Caregiver-Home/widgets/pal_loc_card.dart';
import 'package:flutter/material.dart';

class CaregiverHome extends StatefulWidget {
  const CaregiverHome({super.key});

  @override
  State<CaregiverHome> createState() => _CaregiverHomeState();
}

class _CaregiverHomeState extends State<CaregiverHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.024,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Hello ',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.074,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                              children: [
                                TextSpan(
                                  text: 'Sidessh',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.074,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff62CA73),
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.7,
                      child: Text(
                        'Your care makes the difference!',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Color(0xffA3A3A3),
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddPal()));
                      },
                      color: const Color(0xffA3A3A3),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10),
                      shape: const CircleBorder(),
                      child: Icon(
                        Icons.add,
                        size: screenWidth * 0.065,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.014,
            ),
            SizedBox(
              height: screenHeight * 0.732,
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return PalLocCard();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: screenHeight * 0.02,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
