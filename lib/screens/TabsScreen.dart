import 'package:flutter/material.dart';
import 'package:health/screens/analysisScreen.dart';
import 'package:health/screens/chatScreen.dart';
import 'package:health/screens/HomeScreen.dart';
import 'package:health/screens/plansScreen.dart';
import 'package:health/screens/profileScreen.dart';

class Tabscreen extends StatefulWidget {
  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  final List<Map<String, Object>> pages = [
    {'page': HomeScreen(), 'title': ""},
    {'page': Analysis(), 'title': 'For today'},
    {'page': ChatScreen(), 'title': ''},
    {'page': PlansScreen(), 'title': ''},
    {'page': profile(), 'title': 'My Profile'}
  ];
  int selectedPageIndex = 0;
  void selectPage(int index) {
    setState(
      () {
        selectedPageIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     pages[selectedPageIndex]['title'].toString(),
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   )),
      // ),
      body: pages[selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey.shade800,
        onTap: selectPage,
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.purple,
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.analytics_outlined,
              ),
              label: 'Analysis'),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
              ),
              label: 'Plans'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile')
        ],
      ),
    );
  }
}
