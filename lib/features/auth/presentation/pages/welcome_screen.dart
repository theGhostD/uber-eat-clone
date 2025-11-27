import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/cld-sample-4.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withValues(
                            alpha: 0.3,
                          ), 
                          BlendMode.difference,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/uber.svg',
                          fit: BoxFit.cover,
                          height: 41,
                          width: 117,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(height: 7),
                      SvgPicture.asset(
                        'assets/images/eat.svg',
                        fit: BoxFit.cover,
                        height: 39,
                        width: 114,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
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
                      color: Theme.of(context).colorScheme.primary,
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
