import 'package:bmi/model/argumentsOfCalculate.dart';
import 'package:bmi/screens/resultscreen.dart';
import 'package:bmi/widgets/appBarWidget.dart';
import 'package:bmi/widgets/genderWidget.dart';
import 'package:bmi/widgets/heightWidget.dart';
import 'package:bmi/widgets/weightAndAgeWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/buttomNavigationBar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selecttedGender ='';
  double hight =150;
  double weight =70;
  double age= 20;
  String bmiResult="";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(title: "Calculate BMI"),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff1C2135)),
        child: Column(
          children: [
            Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GenderWidget(selectedGender: 'Male',
                        isSelected: selecttedGender == 'Male',
                        ontapGender: () {
                          setState(() {
                            selecttedGender = 'Male';
                          });
                        },
                      ),
                      GenderWidget(
                        selectedGender: "Female",
                        isSelected: selecttedGender=="Female",
                        ontapGender: (){
                          setState(() {
                            selecttedGender="Female";
                          });
                        },
                      )
                    ],
                  ),
            ),
            Expanded(child: Heightwidget(height: hight,onchangeHeigt: (newHeight){
              setState(() {
                hight=newHeight;
              });
            },),),
            Expanded(child: Row(
              children: [
                WeightAndAgeWidget(
                  tag1: "weight_add",
                  tag2: "weight_sub",
                  title: "Weight",
                  value: weight,
                  addButton:(){
                    if(weight>=5) {
                      setState(() {
                        weight++;
                      });
                    }
                  } ,
                  subButton: (){
                    if(weight<=200) {
                      setState(() {
                        weight--;
                      });
                    }
                  },
                ),
                WeightAndAgeWidget(
                  tag1: "age_add",
                  tag2: "age_sub",
                  title: "Age",
                  value: age,
                  addButton:(){
                    if(age<=100) {
                      setState(() {
                        age++;
                      });
                    }
                  } ,
                  subButton: (){
                    if(age>=1) {
                      setState(() {
                        age--;
                      });
                    }
                  },
                ),
              ],
            )),

          ],
        ),
      ),
      bottomNavigationBar:Buttomnavigationbar(nameButton: "Calculate",ontap:() {
        Navigator.pushNamed(context,"result",arguments: ArgumentsOfCalculates(weight: weight,height: hight));
      },),
    );
  }
}

