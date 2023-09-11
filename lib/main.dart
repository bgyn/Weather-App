import 'package:flutter/material.dart';
import 'package:weather_app/home_page.dart';

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
      title: 'Weather',
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.yellow.shade100),
        scaffoldBackgroundColor: Colors.yellow.shade100,
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}
