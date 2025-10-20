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
      backgroundColor: Colors.black,
       body: screenList[_selectedIndex],
       bottomNavigationBar: Theme(
         data: ThemeData(
          highlightColor: const Color.fromARGB(255, 0, 0, 0),
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory, // Removes the splash animation entirely
        ),
         child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          
          elevation: 0,
          onTap: setSelectedIndex,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
         
             BottomNavigationBarItem(icon: Icon(Icons.person_2), label: ''),
          ],
               ),
       ),
    );
  }
}
