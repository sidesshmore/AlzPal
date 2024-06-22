import 'package:alzpal/Caregiver-App/Caregiver-Add-Known-People/screen/add_known_people.dart';
import 'package:alzpal/Caregiver-App/Caregiver-Home/screens/caregiver_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
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
    'AddFamilyMember',
    // 'Analytics',
    'Home',
    // 'FlashCard',
    'ProfilePage'
  ];

  final List<Widget> _widgetOptions = <Widget>[
    AddCards(),
    // AddCards(),
    CaregiverHome(),
    // CaregiverHome(),
    CaregiverHome()
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
            icon: Icon(Icons.people_alt_rounded,size: 28,),
            label: '',
          ),
          // const BottomNavigationBarItem(
          //   icon: Icon(
          //     size: 28,
          //     CupertinoIcons.chart_bar_fill,
          //   ),
          //   label: '',
          // ),
          const BottomNavigationBarItem(
            icon: Icon(
              size: 28,
              CupertinoIcons.home,
            ),
            label: '',
          ),
          // const BottomNavigationBarItem(
          //   icon: Icon(
          //     CupertinoIcons.rectangle_stack,
          //     size: 28,
          //   ),
          //   label: '',
          // ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_solid,
              size: 28,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff62CA73),
        unselectedItemColor: Color(0xffA3A3A3),
      ),
    );
  }
}