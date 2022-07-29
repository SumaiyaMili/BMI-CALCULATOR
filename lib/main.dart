import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input_page.dart';
import 'package:flutter_bmi_calculator/reusable/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomizedTheme.theme,
      home: InputPage(),
    );
  }
}
