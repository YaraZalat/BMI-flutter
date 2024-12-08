import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
class Resultscreen extends StatelessWidget {
  final String result;
  String s="";
   Resultscreen( { required this.result} );


  void cal(double result){
    if(result<18.5)
      s="UNDERWEIGHT";
    else if(result>=18.5 && result<=24.9)
      s="NORMAL";
    else if(result>=25 && result<=29.9)
      s="OVERWEIGHT";
    else if(result>=30 && result<=34.9)
      s="OBESE";
    else
      s="EXTREMLY OBESE";

  }

  @override
  Widget build(BuildContext context) {
    double bmires=double.tryParse(result)??0.0;
    cal(bmires);
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Color(0xFF1D1E33),
        title: Text("BMI Calculator",style: TextStyle(fontSize: 30,color: Colors.white),textAlign: TextAlign.center,),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF1D1E33)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                  'Your Result',
                  style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.bold),
                ),


                 Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(color: Color(0xFF111328),borderRadius: BorderRadius.circular(30)),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(s,style: TextStyle(color: Colors.green,fontSize: 40, ),),
                            SizedBox(height: 15,),

                            Text(result,style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),

                            Text("you have a ${s.toLowerCase()} body weight ",style: TextStyle(color: Colors.white,fontSize: 20),),
                            Text("Good job!",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],

                        ),
                      ),
                  ),

              ),

              GestureDetector(
                onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  child: Text("Re-Calculate",style: TextStyle(fontSize: 30,color: Colors.white,),textAlign: TextAlign.center,),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFEB1555)),height: 50,),)





            ],
          ),
        ),
      ),
    );
  }
}
