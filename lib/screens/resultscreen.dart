import 'package:bmi/model/argumentsOfCalculate.dart';
import 'package:bmi/widgets/appBarWidget.dart';
import 'package:bmi/widgets/buttomNavigationBar.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  Resultscreen({super.key});

  String getCategory(double result) {
    if (result < 18.5)
      return "UNDERWEIGHT";
    else if (result >= 18.5 && result <= 24.9)
      return "NORMAL";
    else if (result >= 25 && result <= 29.9)
      return "OVERWEIGHT";
    else if (result >= 30 && result <= 34.9)
      return "OBESE";
    else
      return "EXTREMELY OBESE";
  }

  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)?.settings.arguments as ArgumentsOfCalculates;
    double heightInMeters = argument.height / 100;
    double result = argument.weight / (heightInMeters * heightInMeters);
    String s = getCategory(result);

    // MediaQuery for responsiveness
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Appbarwidget(title: "Calculate BMI"),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff1C2135),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Result',
              style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(s, style: TextStyle(color: Colors.green, fontSize: 35)),
                  SizedBox(height: 15),
                  Text(
                    result.round().toString(),
                    style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "You have a ${s.toLowerCase()} body weight",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Good job!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Buttomnavigationbar(nameButton: "Re-Calculate",ontap: (){
        Navigator.pop(context);
      },),
    );
  }
}
