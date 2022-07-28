import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  const RoundIconButton({required this.icon, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      fillColor: kInactiveTextColor,
      focusColor: kFontColor,
      child: Icon(icon),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }

}
