import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uber_eat/features/auth/presentation/pages/welcome_screen.dart';

class MyAuthSplashScreen extends StatefulWidget {
  const MyAuthSplashScreen({super.key});

  @override
  State<MyAuthSplashScreen> createState() => _MyAuthSplashScreenState();
}

class _MyAuthSplashScreenState extends State<MyAuthSplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }

    @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF142328),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset(
              'assets/images/uber.svg',
              fit: BoxFit.cover,
              height: 41,
              width: 117,
              alignment: Alignment.center,
            ),
            SizedBox(height: 7,),
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
    );
  }
}
