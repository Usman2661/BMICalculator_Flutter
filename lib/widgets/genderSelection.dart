import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {


  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

  bool gender = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              setState(() {
                gender = true;
              });

            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,15,0,15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.gender_male,
                    color: gender ? Colors.white : Colors.grey,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('MALE',
                  style: TextStyle(
                    color: gender ? Colors.white : Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  )
                ], 
              ),
            ),
          ),
          ),
           ),

           Expanded(
             flex: 2,
             child:   Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              setState(() {
                gender = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,15,0,15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    MaterialCommunityIcons.gender_female,
                    color: gender ? Colors.grey : Colors.white,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('FEMALE',
                  style: TextStyle(
                    color: gender ? Colors.grey : Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  )
                ], 
              ),
            ),
          ),
          ), 
          )
        
        ],
        
      ),
    );
  }
}