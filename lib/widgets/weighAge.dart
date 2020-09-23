import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WeightAge extends StatefulWidget {
  @override
  _WeightAgeState createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {

  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

  int age = 19;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child:Card(
            color: _colorFromHex('#212F3D'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text('WEIGHT',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  SizedBox(height: 5.0),
                   Text(weight.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                 SizedBox(
                      width:60.0,
                      child: RawMaterialButton(
                    onPressed: () {
                        setState(() {
                        weight--;
                      });
                    },
                    elevation: 10.0,
                    fillColor: _colorFromHex('#34495E'),
                    child: Icon(
                      Icons.remove,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(
                      side: BorderSide(color: _colorFromHex('#34495E'),)
                    ),
                    ),
                    ),
                    SizedBox(
                    width:60.0,
                    child: RawMaterialButton(
                    onPressed: () {
                        setState(() {
                        weight++;
                      });
                    },
                    elevation: 10.0,
                    fillColor: _colorFromHex('#34495E'),
                    child: Icon(
                      Icons.add,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(
                      side: BorderSide(color: _colorFromHex('#34495E'),)
                    ),
                    ),
                    )
                  ],
                  )
                  
                ], 
              ),
            ),
          ),
          ),
        ),
          
             Expanded(
            flex: 1,
            child:Card(
            color: _colorFromHex('#212F3D'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text('AGE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  SizedBox(height: 5.0),
                   Text(age.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                 SizedBox(
                      width:60.0,
                      child: RawMaterialButton(
                    onPressed: () {
                      setState(() {
                        age--;
                      });
                    },
                    elevation: 10.0,
                    fillColor: _colorFromHex('#34495E'),
                    child: Icon(
                      Icons.remove,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(
                      side: BorderSide(color: _colorFromHex('#34495E'),)
                    ),
                    ),
                    ),
                    SizedBox(
                    width:60.0,
                    child: RawMaterialButton(
                    onPressed: () {
                       setState(() {
                        age++;
                      });
                    },
                    elevation: 10.0,
                    fillColor: _colorFromHex('#34495E'),
                    child: Icon(
                      Icons.add,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(
                      side: BorderSide(color: _colorFromHex('#34495E'),)
                    ),
                    ),
                    )
                  ],
                  )
                  
                ], 
              ),
            ),
          ),
          ),
        ),
        ],
      ),
    );
  }
}