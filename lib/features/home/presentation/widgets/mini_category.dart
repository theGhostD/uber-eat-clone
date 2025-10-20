import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/widgets/category_card.dart';
import 'package:uber_eat/mocks/index.dart';

class MiniCategory extends StatelessWidget {
  const MiniCategory({super.key, required this.ontap});

  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return 
    GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 8,
      // mainAxisSpacing: 8,
      childAspectRatio: 0.9,
      children: [
        ...availableCategory
            .take(7)
            .map((category) => CategoryCard(category: category)),
    
        Column(
          children: [
            GestureDetector(
              onTap: ontap,
              child: Container(
                height: 73,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(88, 53, 53, 53),
                        
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.more_horiz, size: 36,color: Colors.grey,),
              ),
            ),
            Text(
              'More',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
