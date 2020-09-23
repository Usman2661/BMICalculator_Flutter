import 'package:flutter/material.dart';
class BMIResult extends StatefulWidget {
  @override
  _BMIResultState createState() => _BMIResultState();

  final String bmiScore;
  final String bmiCatagory;
  final String bmiColor; 
  final String bmiFeedback;
  BMIResult({Key key, @required this.bmiScore,@required this.bmiCatagory,@required this.bmiColor,@required this.bmiFeedback}) : super(key: key);

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
        title:Text('BMI RESULT'),
        backgroundColor: _colorFromHex("#1C2833"),
        centerTitle: true,
      ),
      body: Container(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Container(
            height: 15.0,
            color: _colorFromHex('#17202A'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,10,10),
            child: Expanded(
              flex: 1,
              child: 
               Text('Your Result',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                    )
                    )
            ),
          ),

            Expanded(flex: 8, 
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              child: Row(
              children: 
              <Widget>[
              Expanded(
              child:  Card(
              color: _colorFromHex('#212F3D'),
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8,8,8,8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Text(widget.bmiCatagory,
                    style: TextStyle(
                      color: _colorFromHex(widget.bmiColor),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(height: 15.0),
                    Text( (widget.bmiScore!=null) ? widget.bmiScore :'22.22',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(height:30),
                     Text('Normal BMI Range:',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    )
                    ),
                    SizedBox(height:10),
                     Text('18.5  - 25kg/m2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(height:30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55,0,55,0),
                      child: Container(
                      child:  
                      Text(widget.bmiFeedback,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      )
                      ),
                      ),
                    ),
                    SizedBox(height:30),    
                    Container(
                      width: 200,
                      child:  RaisedButton(
                        elevation: 2.0,
                        color: _colorFromHex('#1C2833'),
                        onPressed: () async {
                  
                        },
                        child:
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                          'Save Result',
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
              ),
          ),
          ),  
          )
          ],
          ),
            )
          ),


            Expanded(
            flex:1,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Expanded(child:    
            RaisedButton(
            elevation: 10.0,
            color: Colors.pink,
            onPressed: () async {  
              Navigator.pop(context);   
                        },
                        child:
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                          'RE-CALCULATE YOUR BMI',
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