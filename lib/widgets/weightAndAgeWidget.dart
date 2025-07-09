import 'package:flutter/material.dart';
class WeightAndAgeWidget extends StatelessWidget {
  final int weight;
  final String title;
  final String tag1;
  final String tag2;
  final Function()? addButton;
  final Function()? subButton;
  const WeightAndAgeWidget({super.key, required this.weight, required this.title, this.addButton, this.subButton, required this.tag1, required this.tag2});

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Container(
        child:
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20,),
              child: Container(
                decoration: BoxDecoration(color: Color(0xff24263B),borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(title,style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E),fontWeight: FontWeight.w300),),
                    Text(weight.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Container(
                          width:36 ,
                          height: 36,
                          child: FittedBox(
                            child: FloatingActionButton(
                                heroTag:tag2 ,

                                onPressed: addButton,
                                backgroundColor: Color(0xff8B8C9E),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                child:  Icon(Icons.add,size: 32,color: Colors.white,)),
                          ),
                        ),
                        Container(
                          width:36 ,
                          height: 36,
                          child: FittedBox(
                            child: FloatingActionButton(
                              heroTag:tag2 ,

                              onPressed: subButton,
                              backgroundColor: Color(0xff8B8C9E),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              child:  Icon(Icons.remove,size: 32,color: Colors.white,)),
                          ),
                        ),

                      ],)

                  ],
                ),
              ),
      ),
    )
    );
  }
}
