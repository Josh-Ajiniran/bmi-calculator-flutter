import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.cardIcon, @required this.cardIconText});

  final IconData cardIcon;
  final String cardIconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(cardIcon, size: kCardIconSize),
        SizedBox(height: kSpacerHeight),
        Text(
          cardIconText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
