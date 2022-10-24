import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/events_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'GPCA Networking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventsScreen(),
    );
  }
}