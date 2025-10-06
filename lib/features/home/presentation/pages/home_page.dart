import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/widgets/home_page_tab.dart';
import 'package:uber_eat/features/home/presentation/widgets/location_section.dart';
import 'package:uber_eat/features/home/presentation/widgets/main_category.dart';
import 'package:uber_eat/features/home/presentation/widgets/mini_category.dart';
import 'package:uber_eat/features/home/presentation/widgets/resturant_card.dart';
import 'package:uber_eat/mocks/index.dart';

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

  void openBottomModal() {
    showModalBottomSheet(
      // useSafeArea: true,
      showDragHandle: true,
      context: context,
      builder: (context) {
        return MainCategory();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 8),
        
              // we have a tab
              HomePageTab(
                selectedTab: selectedTab,
                setSelectedTab: setSelectedTab,
              ),
        
              SizedBox(height: 24),
              // location text
              LocationSection(),
              SizedBox(height: 12),
              // mini category
              SizedBox(
                height: 200,
                child: MiniCategory(ontap: openBottomModal),
              ),
        
              SizedBox(height: 12),
        
              Column(
                children: availableResturantList
                    .take(2)
                    .map((resturant) => ResturantCard(resturant: resturant))
                    .toList(),
              ),
            ],
          ),
        ),
      ),

      // we have category

      // we have promo

      // we have cards

      // we have bottom navigation
    );
  }
}
