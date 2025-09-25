import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/widgets/phone_number_input.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58),
                  child: Text('Enter your mobile number',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                PhoneNumberInput()
          ],
        ),
      ),
    );
  }
}