import 'dart:math';
import 'package:bmi_calculator/bmi_pages/bmi_result.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi_calculator extends StatefulWidget{
  @override
  State<bmi_calculator> createState() => _bmi_calculatorState();
}
class _bmi_calculatorState extends State<bmi_calculator> {
  bool isMale=true;
  double hight=170;
  int age=20;
  int weight=80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',),
         centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: 
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: isMale?Colors.blue:Colors.grey[300],) ,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,size: 70,),
                              SizedBox(height: 5,),
                              Text('Male',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: isMale?Colors.grey[300]:Colors.blue) ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: 70,),
                              SizedBox(height: 5,),
                              Text('Female',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hight',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${hight.round()}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                        Text('cm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                      ],
                    ),
                    Slider(
                        value: hight,
                        max: 240,
                        min: 100,
                        onChanged: (value){
                          setState(() {
                            hight=value;
                          });
                        })
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300],) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',style: TextStyle(fontSize: 30),),
                          Text('$weight',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                heroTag: 'weight+',
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                child: Icon(Icons.remove),
                                mini: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300],) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',style: TextStyle(fontSize: 30),),
                          Text('$age',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                child: Icon(Icons.remove),
                                mini: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
          defaultButton(
            isUpperCase: false,
              text: 'Calculate',
              Function: (){
                double result= weight/pow(hight/100,2);
              print(result.round());
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bmi_results(age: age,result: result,isMale: isMale,)));})
        ],
      ),
    );
  }
}