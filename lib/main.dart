import 'package:alzpal/onboardingScreens/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xff262626)),
      home: OnboardingScreen(),
      // initialRoute: 'onboard',
      // routes: {
      //   'onboard': (context) => const OnboardingScreen(),
      // },
    );
  }
}
