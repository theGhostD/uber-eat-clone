import 'package:flutter/material.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(),
        Row(
          children: [
            Text(
              'Now',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 4),
            Text(
              'London Hall',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.keyboard_arrow_down_sharp, color: Theme.of(context).colorScheme.primary,),
          ],
        ),

        Icon(Icons.adjust, size: 28, color: Theme.of(context).colorScheme.primary,),
      ],
    );
  }
}
