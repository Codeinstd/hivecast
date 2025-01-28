import 'package:flutter/material.dart';
import 'package:hivecast/screens/Interest.dart';
import 'package:hivecast/screens/detail.dart';
import 'package:hivecast/screens/home.dart';
import 'package:hivecast/screens/splash.dart';
import 'package:hivecast/screens/stats.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStats(),
    );
  }
}
