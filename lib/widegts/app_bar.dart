import 'package:flutter/material.dart';

Widget appBar({required BuildContext context, required String text}){
  return Container(
    padding: EdgeInsets.only(left: 20,top: 20,bottom: 10),
    height: 120,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
        color: Color(0xFF10AB83),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0),bottomRight: Radius.circular(12.0))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Text("X",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)),
        Expanded(child: Container()),
        Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
      ],
    ),
  );

}
