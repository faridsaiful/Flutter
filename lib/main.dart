import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/homePage.dart';
import 'package:myapp/loginPage.dart';

import 'loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',
      debugShowCheckedModeBanner: false,
      home: Loginpage()
    );
  }
}
