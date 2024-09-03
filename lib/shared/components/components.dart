import 'package:flutter/material.dart';
Widget defaultButton({
  double conthight=70,
  double width=double.infinity,
  double radius=5,
  Color color=Colors.blue,
  required String text,
  required Function,
  bool isUpperCase=true,
})=>Container(
  height: conthight,
  width: width,
  child:
  MaterialButton(
    onPressed: Function,
    child: Text(isUpperCase?text.toUpperCase():text,style: TextStyle(color: Colors.white),),
  ),
  decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(radius),
      color: color
  ),
);
