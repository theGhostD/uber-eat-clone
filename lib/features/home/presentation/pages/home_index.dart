import 'package:flutter/material.dart';
import 'package:uber_eat/features/explore/presentation/pages/explore_page.dart';
import 'package:uber_eat/features/home/presentation/pages/home_page.dart';
import 'package:uber_eat/features/profile/presentation/pages/profile_page.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({super.key});

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  int _selectedIndex = 0;

  void setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screenList = [HomePage(), ExplorePage(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: screenList[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF000000),
        unselectedItemColor: Color(0xFFB5B5B5),
        backgroundColor: Colors.white,
        elevation: 0,
        onTap: setSelectedIndex,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),

           BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Account'),
        ],
      ),
    );
  }
}
