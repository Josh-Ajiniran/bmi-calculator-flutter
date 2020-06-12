import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardTextStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
const cardIconSize = 80.0;
const spacerHeight = 15.0;

class CardContent extends StatelessWidget {
  CardContent({@required this.cardIcon, @required this.cardIconText});

  final IconData cardIcon;
  final String cardIconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(cardIcon, size: cardIconSize),
        SizedBox(height: spacerHeight),
        Text(
          cardIconText,
          style: cardTextStyle,
        ),
      ],
    );
  }
}
