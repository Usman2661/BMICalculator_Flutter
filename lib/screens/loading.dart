import 'package:BMICalculator/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void redirectToHome() async {

      Future.delayed(Duration(seconds: 3), () {
       // 5s over, navigate to a new page
      Navigator.pushReplacementNamed(context, '/home');
     });
  }

  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }


void initState() {
    super.initState();
    redirectToHome();
  }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      backgroundColor: _colorFromHex("#1C2833"),
      body: Center(
       child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
               Text('BMI CALCULATOR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
            SpinKitPumpingHeart(
            color: Colors.white,
            size: 150.0,
           ),
        ],
        )
      ),
    );
  }
}