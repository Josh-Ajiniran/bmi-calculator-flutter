import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: cardChild,
    );
  }
}
