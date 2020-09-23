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
      resizeToAvoidBottomPadding: false,
      backgroundColor: _colorFromHex("#1C2833"),
      appBar: AppBar(
        title:Text('BMI CALACULATOR'),
        backgroundColor: _colorFromHex("#1C2833"),
        centerTitle: true,
      ),
      body: 
      Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
            height: 15.0,
            color: _colorFromHex('#17202A'),
          ),
          Expanded(flex: 3, child:GenderSelection(),),
          Expanded(flex: 4,child:Height(),),
          Expanded(flex: 3, child:WeightAge(),),
          Expanded(
                  flex:1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child:    
                RaisedButton(
                        elevation: 10.0,
                        color: Colors.pink,
                        onPressed: () async {

                        },
                        child:
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                          'CALCULATE YOUR BMI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                            ),    
                            // SizedBox(width: 10.0),
                            // Icon(Icons.expand_less, color: Colors.white,),
                            ],
                            ),      
                            padding: EdgeInsets.fromLTRB(0.0,20.0,0.0,20.0),
                        ), 
                        )
          ],
          ),
          )
          ],
          )
      )
    );
  }
}