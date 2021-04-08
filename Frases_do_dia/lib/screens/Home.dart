import 'package:Frases_do_dia/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "frases do dia",
      home: HomeScreen(),
    );
  }
}
