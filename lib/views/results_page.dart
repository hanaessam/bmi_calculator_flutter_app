import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/models/large_calculate_button.dart';
import 'package:flutter/material.dart';

import '../models/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpret;

  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpret})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Your Results',
              style: kResultLabel,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 10,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIresult,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      interpret,
                      style: kInterpretationText,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          LargeCalculateButton(
            text: 'Re-Calculate',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
