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
            color: const Color.fromARGB(88, 53, 53, 53),
           
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
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
