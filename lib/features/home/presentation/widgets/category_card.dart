import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 73,
          decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
           
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: Image.asset(
              category.imageUrl,
              height: 53,
              width: 53,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        Text(
          category.name,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
