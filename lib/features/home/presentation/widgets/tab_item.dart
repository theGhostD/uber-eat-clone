import 'package:flutter/material.dart';

class TabItem extends StatefulWidget {
  const TabItem({super.key, required this.name, required this.index});
  final String name;
  final int index;

  @override
  State<TabItem> createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);

    return ValueListenableBuilder<double>(
      valueListenable: controller.animation!,
      builder: (context, animationValue, child) {
        final int currentIndex = animationValue.round();
        final bool isActive = currentIndex == widget.index;

        return GestureDetector(
          onTap: () => controller.animateTo(widget.index),
          child: Container(
            margin: EdgeInsets.only(right: 8),
            width: 97,
            height: 37,
            decoration: BoxDecoration(
              color: isActive ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Center(
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: isActive ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
