import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/pages/phone_screen.dart';
import 'package:uber_eat/features/auth/presentation/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Image.asset(
              'assets/images/splashPng.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 15,
                right: 15,
                bottom: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get started with Uber Eats',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 12),
                  ArrowButton(
                    copy: 'Continue',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => PhoneInputScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
