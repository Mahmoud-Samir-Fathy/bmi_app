import 'package:bmi_calculator/bmi_pages/bmi_calculator.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
              debugShowCheckedModeBanner: false,
              home:bmi_calculator()
          );
        }
  }
