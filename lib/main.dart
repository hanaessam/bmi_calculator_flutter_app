import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(color: kPrimaryColor,),),
      home: const InputPage(),
    );
  }
}

