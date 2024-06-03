import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bmi_results extends StatelessWidget{


  final int age;
  final double result;
  final bool isMale;
  bmi_results({
   required this.result,
    required this.age,
   required this.isMale
});

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined) ,onPressed: (){
          Navigator.pop(context);
        }),
        title: Text('BMI Result'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text('Gender  ->${isMale? 'Male': 'Female'}',style: TextStyle(fontSize: 30),),
            Text('Result ->${result.round()}',style: TextStyle(fontSize: 30),),
            Text('Age ->$age',style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}