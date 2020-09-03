import 'package:flutter/material.dart';
import 'dart:async';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> TfliteHome())) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orange[400]
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         CircleAvatar(
                           backgroundImage: AssetImage('assets/tflite.jpg'),
                           radius: 90,
                         ),
                         Padding(
                        padding: EdgeInsets.only(top: 15.0),
                         ),
                         Text("VisionTF",
                         style: TextStyle(
                           fontFamily: 'SourceSansPro',
                           color: Colors.white,
                           fontSize: 24.0,
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                       ],           
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0)
                      ),
                    Text("Try it out !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro'
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
