import 'package:flutter/material.dart';
import '../constants.dart';



class GenderCard extends StatelessWidget {

  final IconData icon;
  final String genderText;


   const GenderCard({ required this.icon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(height: 20.0,),
        Text(genderText,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
