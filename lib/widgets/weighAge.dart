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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,20.0),
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
                   Text('74',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  Row(children: <Widget>[],)
                  
                ], 
              ),
            ),
          ),
          ),
    

             Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,20.0),
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
                   Text('19',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )
                  ),
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