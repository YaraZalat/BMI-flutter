import 'package:bmi/screens/homeScreen.dart';
import 'package:bmi/screens/resultscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMI());
}

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home":(context)=> HomeScreen(),
        "result":(context)=>Resultscreen(),
      },
    );
  }
}


