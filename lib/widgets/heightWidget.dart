import 'package:flutter/material.dart';
class Heightwidget extends StatelessWidget {
  final double height;
  final Function(double)? onchangeHeigt;
   Heightwidget({super.key, required this.height,required this.onchangeHeigt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff333244),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Height",style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E),fontWeight: FontWeight.w300),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(height.round().toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 1,),
                Text("cm",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white, // لون الشريط النشط
                inactiveTrackColor: Color(0xFF8D8E98), // لون الشريط غير النشط
                thumbColor: Color(0xFFEB1555), // لون المقبض
                overlayColor: Color(0x29EB1555), // تأثير المقبض
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 30.0,
                    top: 5,
                    left: 23,
                    right: 25),
                child: Slider(
                  value: height,
                  min: 100,
                  max: 200,
                  onChanged:onchangeHeigt,
                ),
              ),
            ),                  ],),
      ),
    );
  }
}
