import 'package:bloc_pattern/UI/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
