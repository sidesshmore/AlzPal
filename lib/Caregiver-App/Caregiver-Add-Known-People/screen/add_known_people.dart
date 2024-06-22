// add_cards.dart
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:alzpal/Caregiver-App/Caregiver-Add-Known-People/widgets/known_card_info.dart';

class AddCards extends StatefulWidget {
  const AddCards({super.key});

  @override
  State<AddCards> createState() => _AddCardsState();
}

class _AddCardsState extends State<AddCards> {
  final _folderNamecontroller = TextEditingController();
  final List<Widget> _cards = [];
  final ImagePicker _picker = ImagePicker();
  String? _selectedPatient;
  List<String> _patients = ['Linda', 'Mike', 'Jose'];
  int _cardCounter = 0;

  @override
  void initState() {
    super.initState();
    _addCard();
  }

  void _addCard() {
    setState(() {
      _cardCounter++;
      _cards.add(CardInfo(cardNumber: _cardCounter));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Known People'),
        backgroundColor: const Color(0xff262626),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              dropdownColor: const Color(0xff262626),
              value: _selectedPatient,
              items: _patients
                  .map((patient) => DropdownMenuItem(
                        value: patient,
                        child: Text(patient,
                            style: const TextStyle(color: Colors.white)),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedPatient = value;
                });
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff62CA73), width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Choose Patient',
                labelStyle: TextStyle(
                    color: Colors.white, fontSize: screenWidth * 0.05),
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Expanded(
              child: ListView.builder(
                itemCount: _cards.length,
                itemBuilder: (context, index) {
                  return _cards[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xff62CA73),
                  ),
                  child: Text(
                    'Add Folder',
                    style: TextStyle(
                      fontSize: screenWidth * 0.055,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: const Color(0xff62CA73),
                  onPressed: _addCard,
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
