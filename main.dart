// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mode(),
    );
  }
}

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  bool DarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkMode ? Colors.grey[900] : Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.android,
                size: 200,
                color: DarkMode ? Colors.white : Colors.black,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    DarkMode = true;
                  });
                },
                child:
                    Text('Dark mode', style: TextStyle(color: Colors.white70)),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      DarkMode = false;
                    });
                  },
                  child:
                      Text('Light mode', style: TextStyle(color: Colors.black)),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
