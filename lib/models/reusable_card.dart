import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final Function? onPress;
  const ReusableCard({ this.cardChild, required this.color, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onPress!();},
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild,
      ),
    );
  }
}
