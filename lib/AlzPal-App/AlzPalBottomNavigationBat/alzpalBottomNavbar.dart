import 'package:alzpal/AlzPal-App/AlzPal-Home/screens/alzpal_home.dart';
import 'package:alzpal/Caregiver-App/Caregiver-Add-Known-People/screen/add_known_people.dart';
import 'package:alzpal/Caregiver-App/Caregiver-Home/screens/caregiver_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AlzPalNavigationBar extends StatefulWidget {
  const AlzPalNavigationBar({super.key});

  @override
  State<AlzPalNavigationBar> createState() => _AlzPalNavigationBarState();
}

class _AlzPalNavigationBarState extends State<AlzPalNavigationBar> {
  final keyOne = GlobalKey();
  int _selectedIndex = 1;

  // final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  // void _openAddExpenseOverlay() {
  //   showModalBottomSheet(
  //       isScrollControlled: true,
  //       context: context,
  //       builder: (ctx) => AddModal());
  // }

  static List pageNames = [
    'EmergencyCall'
    'Whoisthis',
    'Flashcard'
  ];

  final List<Widget> _widgetOptions = <Widget>[
    AlzpalHome(),
    AlzpalHome(),
    AlzpalHome(),
  ];

  void _onItemTapped(int index) async {
    // await analytics.logEvent(
    //     name: 'pages_tracked',
    //     parameters: {"page_name": pageNames[index], "page_index": index});

    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  // void initState() {
  //   analytics.setAnalyticsCollectionEnabled(true);

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff171717),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.phone_callback_rounded,size: 28,),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 40,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.rectangle_stack,
              size: 28,
            ),
            label: '',
          ),
          // const BottomNavigationBarItem(
          //   icon: Icon(
          //     CupertinoIcons.person_solid,
          //     size: 28,
          //   ),
          //   label: '',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff62CA73),
        unselectedItemColor: Color(0xffA3A3A3),
      ),
    );
  }
}