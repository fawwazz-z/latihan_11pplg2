import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/pages/CalculatorPage.dart';
import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}