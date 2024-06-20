import 'package:alzpal/Caregiver-App/Caregiver-Home/screens/caregiver_home.dart';
import 'package:flutter/material.dart';

class CaregiverSignUp extends StatefulWidget {
  const CaregiverSignUp({super.key});

  @override
  State<CaregiverSignUp> createState() => _CaregiverSignUpState();
}

class _CaregiverSignUpState extends State<CaregiverSignUp> {
  final _emailcontroller = TextEditingController();
  final _namecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(fontSize: screenWidth * 0.07),
        ),
        foregroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: const Color(0xff262626),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.027,
            ),
            Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      fontSize: screenWidth * 0.039, color: Color(0xffA3A3A3)),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            SizedBox(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: _namecontroller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff62CA73), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color(0xffA3A3A3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.033,
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: screenWidth * 0.039, color: Color(0xffA3A3A3)),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            SizedBox(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: _emailcontroller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff62CA73), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color(0xffA3A3A3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.033,
            ),
            Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: screenWidth * 0.039, color: Color(0xffA3A3A3)),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            SizedBox(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: _passwordcontroller,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff62CA73), width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Color(0xffA3A3A3),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.033,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaregiverHome()),
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(screenWidth*0.382, screenHeight*0.063),
                // padding:
                //     EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color(0xff62CA73),
              ),
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontSize: screenWidth * 0.065,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Image.asset('assets/OR-Row.png'),
            SizedBox(
              height: screenHeight * 0.059,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                // googleLogin();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CaregiverHome()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/google.jpg"),
                      height: screenHeight * 0.043,
                      width: screenWidth * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 8),
                      child: Text(
                        'Sign Up with Google',
                        style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
