import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Container(
                width: 42.0,
                  height: 42.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    gradient: LinearGradient(colors: [
                      Color(0xFF00AEFF),
                      Color(0xFF0076FF,)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                    ),
                  ),
                  child: Icon(Icons.home,color: Colors.white,)
              ),
              SizedBox(width: 12,),
              Container(
                child: Text("Home", style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF242629),
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

