
import 'package:flutter/material.dart';
import 'package:bmi/screens/Splash/splash.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
          scaffoldBackgroundColor: Colors.cyan,
      ),
      home: SplashPage (),
    );
  }
}



