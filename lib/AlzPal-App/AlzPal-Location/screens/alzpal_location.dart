import 'package:alzpal/AlzPal-App/AlzPal-Home/screens/alzpal_home.dart';
import 'package:alzpal/AlzPal-App/AlzPal-SignUp/screens/otp_screen.dart';
import 'package:alzpal/AlzPal-App/AlzPalBottomNavigationBat/alzpalBottomNavbar.dart';
import 'package:background_location/background_location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_android/geolocator_android.dart';

class AlzpalLocation extends StatefulWidget {
  const AlzpalLocation({super.key});

  @override
  State<AlzpalLocation> createState() => _AlzpalLocationState();
}

class _AlzpalLocationState extends State<AlzpalLocation> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.040,
        backgroundColor: const Color(0xff262626),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.09,
            ),
            Row(
              children: [
                Text(
                  'One Last Thing',
                  style: TextStyle(
                      fontSize: screenWidth * 0.0744,
                      color: const Color(0xffA3A3A3),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              'We would require your Pal’s device location for their safety',
              style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/Location-Pop-Up.png',
                  width: screenWidth * 0.82,
                  height: screenHeight * 0.5,
                ),
                Positioned(
                  bottom: 10,
                  left: screenWidth * 0.22,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () async {
                          LocationPermission permission =
                              await Geolocator.checkPermission();
                          if (permission == LocationPermission.denied) {
                            await Geolocator.requestPermission();
                          
                          } else {
                            print("hello");
                      

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlzPalNavigationBar(),
                              ),
                            );
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
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
                      ),
                      TextButton(
                        onPressed: () async{
                          print("hello");
                          
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlzPalNavigationBar(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                        ),
                        child: Text(
                          'Not Now',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA3A3A3),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
