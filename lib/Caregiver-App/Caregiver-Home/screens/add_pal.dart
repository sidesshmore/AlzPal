import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AddPal extends StatefulWidget {
  const AddPal({super.key});

  @override
  State<AddPal> createState() => _AddPalState();
}

class _AddPalState extends State<AddPal> {
  final _namecontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _numbercontroller = TextEditingController();
  final _emergencyNamecontroller = TextEditingController();
  final _emergencyNumbercontroller = TextEditingController();
  String emergencyContact = '';
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Add Pal Details',
          style: TextStyle(fontSize: screenWidth * 0.07),
        ),
        foregroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: const Color(0xff262626),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
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
                        fontSize: screenWidth * 0.039,
                        color: Color(0xffA3A3A3)),
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
                      borderSide: const BorderSide(
                          color: Color(0xff62CA73), width: 2.0),
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
                    'Address',
                    style: TextStyle(
                        fontSize: screenWidth * 0.039,
                        color: Color(0xffA3A3A3)),
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
                  controller: _addresscontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff62CA73), width: 2.0),
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
                    'Upload Image(optional)',
                    style: TextStyle(
                        fontSize: screenWidth * 0.039,
                        color: Color(0xffA3A3A3)),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.014,
              ),
              InkWell(
                onTap: () {},
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(20),
                    dashPattern: [15, 15],
                    color: Color(0xffA3A3A3),
                    strokeWidth: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: screenHeight * 0.083,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.file_upload,
                                    size: screenHeight * 0.043,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Click here to upload',
                                    style: TextStyle(
                                        color: Color(0xffA3A3A3),
                                        fontSize: screenWidth * 0.037,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              const Divider(
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              Row(
                children: [
                  Text(
                    'Emergency Contact Name',
                    style: TextStyle(
                        fontSize: screenWidth * 0.039,
                        color: Color(0xffA3A3A3)),
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
                  controller: _emergencyNamecontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff62CA73), width: 2.0),
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
                    'Emergency Contact Number',
                    style: TextStyle(
                        fontSize: screenWidth * 0.039,
                        color: Color(0xffA3A3A3)),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              SizedBox(
                child: InternationalPhoneNumberInput(
                  textFieldController: _emergencyNumbercontroller,
                  onInputChanged: (PhoneNumber number) {
                    setState(() {
                      emergencyContact = number.phoneNumber.toString();
                    });
                  },
                  textStyle: TextStyle(color: Colors.white),
                  selectorTextStyle: TextStyle(color: Colors.white),
                  selectorConfig: SelectorConfig(
                    useBottomSheetSafeArea: true,
                    selectorType: PhoneInputSelectorType.DIALOG,
                  ),
                  inputDecoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              TextButton(
                onPressed: () {
                  log(emergencyContact);
                },
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xff62CA73),
                ),
                child: Text(
                  'Create',
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
      ),
    );
  }
}
