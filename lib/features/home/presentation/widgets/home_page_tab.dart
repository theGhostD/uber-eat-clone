import 'package:flutter/material.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({super.key, required this.selectedTab,required this.setSelectedTab});
  final String selectedTab;
  final void Function(String) setSelectedTab;

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  List<String> tabList = ['Delivery', 'Pickup', 'Dine-in'];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: tabList
          .map(
            (tabValue) => 
            
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 97,
              height: 37,
              decoration: BoxDecoration(
                color: widget.selectedTab == tabValue
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(),
              ),
              child: GestureDetector(
                onTap: () {
                 widget.setSelectedTab(tabValue);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Center(
                    child: Text(
                      tabValue,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: widget.selectedTab == tabValue
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
