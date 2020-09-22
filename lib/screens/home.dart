import 'package:BMICalculator/widgets/genderSelection.dart';
import 'package:BMICalculator/widgets/height.dart';
import 'package:BMICalculator/widgets/weighAge.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: _colorFromHex("#1C2833"),
      appBar: AppBar(
        title:Text('BMI CALACULATOR'),
        backgroundColor: _colorFromHex("#1C2833"),
        centerTitle: true,
      ),
      body: 
      Container(
        child:Column(
          children: <Widget>[
            Container(
            height: 15.0,
            color: _colorFromHex('#17202A'),
          ),
          GenderSelection(),
          Height(),
          WeightAge(),
          ],
          )
      )
    );
  }
}