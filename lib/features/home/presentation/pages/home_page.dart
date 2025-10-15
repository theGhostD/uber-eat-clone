import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/widgets/tabView/delivery.dart';
import 'package:uber_eat/features/home/presentation/widgets/tab_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedTab = 'Delivery';

  void setSelectedTab(String tab) {
    setState(() {
      selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabAlignment: TabAlignment.center,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory, 
              overlayColor: WidgetStateProperty.all(
                Colors.transparent,
              ), 
              tabs: [
                Tab(child: TabItem(name: 'Delivery', index: 0)),
                Tab(child: TabItem(name: 'Pickup', index: 1)),
                Tab(child: TabItem(name: 'Dine-in', index: 2)),
              ],
            ),
            Expanded(
              child: TabBarView(
                 physics: BouncingScrollPhysics(), 
                children: [
                  DeliveryTabItem(),
                  Center(child: Text('Pickup Content Here')),
                  Center(child: Text('Dine-in Content Here')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
