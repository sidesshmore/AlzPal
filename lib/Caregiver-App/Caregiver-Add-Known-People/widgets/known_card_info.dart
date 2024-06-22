import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CardInfo extends StatelessWidget {
  final int cardNumber;
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardDescController = TextEditingController();
  late File _image;
  final ImagePicker imagepicker = ImagePicker();

   pickimage_gallery() async {
    XFile ? image = await imagepicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
  }

  CardInfo({super.key, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card $cardNumber',
            style: TextStyle(
              fontSize: screenWidth * 0.048,
              fontWeight: FontWeight.w600,
              color: const Color(0xff62CA73),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              // Name text field
              Expanded(
                child: TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  controller: _cardNameController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                    labelText: "Name",
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff62CA73),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 0.03),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color(0xff62CA73),
                      width: 1.0,
                    ),
                  ),
                  backgroundColor: const Color(0xff262626),
                ),
                onPressed: () {
                  pickimage_gallery();
                },
                label: Text(
                  'Upload Photo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.04,
                  ),
                ),
                icon: Icon(
                  Icons.upload,
                  size: screenWidth * 0.04,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          TextField(
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            controller: _cardDescController,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.04,
              ),
              labelText: "Description/Relation",
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xff62CA73),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Image.asset(
            'assets/Dashed_Line.png',
            width: screenWidth * 0.91,
          ),
        ],
      ),
    );
  }
}
