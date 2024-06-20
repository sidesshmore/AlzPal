import 'package:alzpal/onboardingScreens/screen/onScreen_1.dart';
import 'package:alzpal/onboardingScreens/screen/onScreen_2.dart';
import 'package:alzpal/onboardingScreens/screen/onScreen_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Onscreen1(controller: _controller),
              Onscreen2(controller: _controller),
              Onscreen3(controller: _controller),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.35),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotHeight: 12,
                activeDotColor: Color(0xff62CA73),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
