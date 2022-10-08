import 'package:flutter/material.dart';

import 'screens/bottom_bar.dart';

// FINAL VERSION W BUILDS

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Tickets',
      theme: ThemeData(fontFamily: 'Oswald'),
      home: const BottomBar(),
    );
  }
}
