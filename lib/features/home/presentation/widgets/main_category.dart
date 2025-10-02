import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/widgets/category_card.dart';
import 'package:uber_eat/mocks/index.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'All categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              // mainAxisSpacing: 8,
              childAspectRatio: 0.9,
              children: [
                ...availableCategory.map(
                  (category) => CategoryCard(category: category),
                ),
            
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
