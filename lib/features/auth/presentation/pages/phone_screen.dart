import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/widgets/button.dart';
import 'package:uber_eat/features/auth/presentation/widgets/phone_number.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uber_eat/features/home/presentation/pages/home_index.dart';

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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 16),
              PhoneNumberWidget(),
              SizedBox(height: 24),

              ArrowButton(
                copy: 'Next',
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => HomeIndex()),
                  );
                },
              ),

              SizedBox(height: 12),
              Text(
                'By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from uber and its affiliates to the number provided.',
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 20 / 12,
                ),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Color(0xFFA4A4A4), thickness: 1),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'or',
                    style: TextStyle(
                      color: Color(0xFF888888),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 20 / 14,
                    ),
                  ),
                  SizedBox(width: 10),

                  Expanded(
                    child: Divider(color: Color(0xFFA4A4A4), thickness: 1),
                  ),
                ],
              ),
               SizedBox(height: 18),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: BoxBorder.all(width: 0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Google.svg',
                          fit: BoxFit.cover,
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                        ),
                        Text(
                          'Continue with google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
