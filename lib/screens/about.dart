import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/tflite.jpg"),
                  radius: 89,
                ),
              ),
              SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("VisionTF is an app made with flutter which is integrated with tenserflow lite to perform object detection in apps. Models used here is ssdmobilenet and yolov2_tiny.",
                style: TextStyle(
                  fontSize: 25
                ),
                ),
              )
            ],

          ) ,

      ),
    );
  }
}