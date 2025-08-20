import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:latihan_11pplg2/pages/CalculatorPage.dart';
import 'package:latihan_11pplg2/login_page.dart';
import 'package:latihan_11pplg2/routes/pages.dart';
import 'package:latihan_11pplg2/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 111, 112, 111),
          foregroundColor: Colors.white,
        ),
      ),

      initialRoute: AppRoutes.bottomNavPage,
      getPages: AppPages.pages,

      
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
      popGesture: true,
    );
  }
}
