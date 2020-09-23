import 'package:BMICalculator/screens/bmiresult.dart';
import 'package:BMICalculator/screens/home.dart';
import 'package:BMICalculator/screens/loading.dart';
import 'package:flutter/material.dart';


void main(){
    runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => Home(),
      '/': (context) => Loading(),
    },
  ));
}