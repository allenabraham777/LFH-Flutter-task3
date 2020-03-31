import 'package:ecommerce_ui/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "LFH Task 3 - Ecommerce UI",
    theme: ThemeData(
      primaryColor: Colors.white
    ),
    home: HomeScreen(),
  )
);
