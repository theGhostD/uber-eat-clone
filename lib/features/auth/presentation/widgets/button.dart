import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key, required this.copy, required this.onTap});

  final String copy;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(
                copy,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SvgPicture.asset(
                'assets/images/arrowWhite.svg',
                fit: BoxFit.cover,
                height: 18,
                width: 22,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
