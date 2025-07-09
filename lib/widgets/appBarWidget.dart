import 'package:flutter/material.dart';

 class Appbarwidget extends StatelessWidget implements PreferredSizeWidget{
   final String title;
   const Appbarwidget({super.key, required this.title});
   @override
   Widget build(BuildContext context) {
     return AppBar(
       iconTheme: IconThemeData(color: Colors.white),
       centerTitle: true,
       backgroundColor: Color(0xff24263B),
       title: Text(title,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
     );
   }
  Size get preferredSize => Size.fromHeight(40);
 }

