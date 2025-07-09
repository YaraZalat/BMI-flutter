import 'package:flutter/material.dart';
class Buttomnavigationbar extends StatelessWidget {
  final Function()? ontap;
  final String nameButton;
  const Buttomnavigationbar({super.key, this.ontap, required this.nameButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(child: Text(nameButton,style: TextStyle(fontSize: 30,color: Colors.white,),textAlign: TextAlign.center,)),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(color: Color(0xffE83D67)),),);
  }
}
