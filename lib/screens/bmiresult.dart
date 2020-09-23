import 'package:flutter/material.dart';
class BMIResult extends StatefulWidget {
  @override
  _BMIResultState createState() => _BMIResultState();
}

 Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

class _BMIResultState extends State<BMIResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomPadding: false,
      backgroundColor: _colorFromHex("#1C2833"),
      appBar: AppBar(
        title:Text('BMI CALACULATOR'),
        backgroundColor: _colorFromHex("#1C2833"),
        centerTitle: true,
      ),
      body: Container(child: Text('Your Result'))
    );
  }
}