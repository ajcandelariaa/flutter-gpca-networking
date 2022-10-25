import 'package:flutter/material.dart';
import 'package:gpca_networking/routes/route.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'GPCA Networking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: EventsListScreen.routeName,
      routes: getRoutes(),
    );
  }
}