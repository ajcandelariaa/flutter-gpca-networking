import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/app_drawer_provider.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/routes/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('This is main_dart');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
        ChangeNotifierProvider(create: (_) => AppDrawerProvider()),
        ChangeNotifierProvider(create: (_) => EventDrawerProvider()),
      ],  
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GPCA Networking',
          theme: Provider.of<ThemeProvider>(context).lightData,
          darkTheme: Provider.of<ThemeProvider>(context).darkData,
          themeMode: Provider.of<ThemeProvider>(context).themeMode,
          initialRoute: '/',
          routes: getRoutes(),
        );
      },
    );
  }
}