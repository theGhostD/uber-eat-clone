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
  bool isAnimated = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
      isAnimated = true;
    });
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
        child: 
        Column(
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
                SizedBox(height: 7),
                SvgPicture.asset(
                  'assets/images/eat.svg',
                  fit: BoxFit.cover,
                  height: 39,
                  width: 114,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 7),
              ],
            ),
        
        //  Stack(
        //   children: [
           
        //     AnimatedContainer(
        //       duration: Duration(seconds: 2),
        //       alignment:isAnimated ? Alignment(0, -0.1) :Alignment(0, -1.1),
        //       child: Text('UBER', style: TextStyle(fontSize: 34)),
        //     ),

        //      AnimatedContainer(
        //       duration: Duration(seconds: 3),
        //       alignment:isAnimated ? Alignment(0, 0) :Alignment(-1.5, 0),
        //       child: Text('Eats', style: TextStyle(fontSize: 34)),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
