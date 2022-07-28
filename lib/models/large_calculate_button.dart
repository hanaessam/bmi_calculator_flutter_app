import 'package:flutter/material.dart';

import '../constants.dart';

class LargeCalculateButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const LargeCalculateButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        color: kAccentColor,
        width: double.infinity,
        height: 75.0,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
        ),
      ),
    );
  }
}
