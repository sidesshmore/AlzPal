import 'package:flutter/material.dart';

class PalLocCard extends StatefulWidget {
  const PalLocCard({super.key});

  @override
  State<PalLocCard> createState() => _PalLocCardState();
}

class _PalLocCardState extends State<PalLocCard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.28,
          width: screenWidth * 0.92,
          decoration: BoxDecoration(
              color: Color(0xff525252),
              borderRadius: BorderRadius.circular(30)),
        ),
        Container(
          height: screenHeight * 0.078,
          width: screenWidth * 0.92,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Linda White',
                    style: TextStyle(
                        fontSize: screenWidth * 0.065,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: screenWidth * 0.07,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
