import 'package:flutter/material.dart';
import 'package:hexcolorconvert/hexcolor.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Row(
            children: [
              Container(
                width: 200,
                // height: MediaQuery.he,
                decoration: BoxDecoration(
                  color: Colors.blue,
                    border: Border.all(
                      width: 3,
                    ),
                  borderRadius: BorderRadius.circular(10)
                    
                  ),
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text("sidebar"),
              ),

              Container(
                margin: EdgeInsets.only(left: 50, top: 10),
                child: Text("Content"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

