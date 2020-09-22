import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {

  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

    double height = 100;
    int currentHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
             Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25,10,25,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text('HEIGHT ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                  Text( currentHeight.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                    child: Text( 'cm',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                  ],
                  ),
                  SizedBox(height:20.0),
                  Container(
                    width: 300,
                    child:  
                    
                    SliderTheme(
    data: SliderThemeData(
            thumbColor: Colors.pink,
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.grey,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
            child:Slider( 
                    value: height,
                    min: 0,
                    max: 300,
                    divisions: 300,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                        currentHeight = value.toInt();
                      });
                    },
                  ),
                    ),
                  )
                ], 
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}