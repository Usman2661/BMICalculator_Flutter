import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Text('BMI Calculator'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: 
      Center(
      child: 
      Text('BMI Calculator'),
      ),
    );
  }
}