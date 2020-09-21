import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {


  Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
            color: _colorFromHex('#273746'),
            child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(45.0,20.0,45.0,20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.verified_user,
                    color: Colors.grey,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('MALE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                  )
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
              padding: const EdgeInsets.fromLTRB(45.0,20.0,45.0,20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('FEMALE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
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