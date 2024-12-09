import 'package:bmi/resultscreen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selecttedGender ='';
  double hight =170;
  int weight =70;
  int age= 20;
  Color activeColor = Color(0xFFEB1555);  // اللون النشط (مثلًا للـ Male أو Female عند التحديد)
  Color inactiveColor = Color(0xFF1D1E33);
  String bmiResult="";






  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Color(0xFF1D1E33),
        title: Text("BMI APP",style: TextStyle(fontSize: 30,color: Colors.white),textAlign: TextAlign.center,),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1D1E33)),
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selecttedGender='male';
                              });
                            },
                            child: Container(

                              decoration: BoxDecoration(
                                  color: selecttedGender=="male"? activeColor : inactiveColor,
                                  borderRadius: BorderRadius.circular(10)),


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(Icons.male_outlined,size: 100,color: Colors.white,),
                                  Text("Male",style: TextStyle(fontSize: 30,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width:10 ,),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selecttedGender="female";
                              });
                            },
                            child: Container (
                              decoration: BoxDecoration(
                                  color: selecttedGender == 'female' ? activeColor : inactiveColor,
                                  borderRadius: BorderRadius.circular(10)),


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.female_outlined,size: 100,color: Colors.white,),
                                  Text("Female",style: TextStyle(fontSize: 30,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF111328),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Height",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(hight.toStringAsFixed(2),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(width: 1,),
                        Text("cm",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white, // لون الشريط النشط
                        inactiveTrackColor: Color(0xFF8D8E98), // لون الشريط غير النشط
                        thumbColor: Color(0xFFEB1555), // لون المقبض
                        overlayColor: Color(0x29EB1555), // تأثير المقبض
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: hight,
                        min: 100,
                        max: 200,
                        onChanged: ( newValue) {
                          setState(() {
                            hight=newValue;
                          });
                        },
                      ),
                    ),                  ],),
              ),
            )
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: Row(

                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xFF111328),borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Weight",style: TextStyle(fontSize: 30,color: Colors.white),),
                              Text(weight.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  FloatingActionButton(
                                    onPressed: () { setState(() {
                                      weight++;
                                    }); },
                                    elevation: 0, // إزالة الظل
                                    highlightElevation: 0, // إزالة تأثير الارتفاع عند الضغط
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                        decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(50)),
                                        child: Icon(Icons.add,size: 60,color: Colors.white,)),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () { setState(() {
                                      weight--;
                                    }); },
                                    elevation: 0, // إزالة الظل
                                    highlightElevation: 0, // إزالة تأثير الارتفاع عند الضغط
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                        decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(50)),
                                        child: Icon(Icons.remove,size: 60,color: Colors.white,)),
                                  )
                                ],)

                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xFF111328),borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Age",style: TextStyle(fontSize: 30,color: Colors.white),),
                              Text(age.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  FloatingActionButton(
                                    onPressed: () { setState(() {
                                      age++;
                                    }); },
                                    elevation: 0, // إزالة الظل
                                    highlightElevation: 0, // إزالة تأثير الارتفاع عند الضغط
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                        decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(50)),
                                        child: const Icon(Icons.add,size: 60,color: Colors.white,)),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () { setState(() {
                                      age--;
                                    }); },
                                    elevation: 0, // إزالة الظل
                                    highlightElevation: 0, // إزالة تأثير الارتفاع عند الضغط
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                        decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(50)),
                                        child: Icon(Icons.remove,size: 60,color: Colors.white,)),
                                  )
                                ],)

                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
            GestureDetector(
              onTap: (){
                double heightInMeters = hight / 100; // تحويل الطول إلى متر
                double bmi = weight / (heightInMeters * heightInMeters); // حساب الـ BMI
                bmiResult = bmi.toStringAsFixed(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultscreen(result: bmiResult), // تمرير النتيجة إلى شاشة النتائج
                  ),
                );
              },
              child: Container(
                child: Text("Calculate",style: TextStyle(fontSize: 30,color: Colors.white,),textAlign: TextAlign.center,),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFEB1555)),height: 50,),)
          ],
        ),
      ),
    );
  }
}

