import 'package:flutter/material.dart';

Widget title(String text){
 return Container(
  padding: EdgeInsets.all(12),
  height: 50,
  width: 280,
  color: Color(0xFF10AB83),
  child: Text(text,style: TextStyle(
   color: Colors.white,fontSize: 18,
   fontWeight: FontWeight.bold
  ),),
 );
}