import 'package:flutter/material.dart';
class GenderWidget extends StatelessWidget {
  final String selectedGender;
  final Function()? ontapGender;
  final bool isSelected;
   GenderWidget({super.key, required this.selectedGender, this.ontapGender, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    Color inactiveColor = Color(0xff24263B);
    Color activeColor = Color(0xff333244);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20,),
        child: GestureDetector(
          onTap:ontapGender ,
          child: Container(
            decoration: BoxDecoration(
                color: isSelected ? activeColor : inactiveColor,
                borderRadius: BorderRadius.circular(10)),
            child:Column(
              children: [
                Icon(selectedGender == 'Male' ? Icons.male_outlined : Icons.female_outlined,size: 96,color: Colors.white,),
                Text(selectedGender,style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E),),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
