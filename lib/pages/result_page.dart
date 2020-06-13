import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi,
      @required this.bmiInterpretation,
      @required this.bmiResult});

  final String bmiResult;
  final String bmi;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR - Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Your Result', style: kResultTitleTextStyle),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(bmiResult.toUpperCase(), style: kResultTextStyle),
                  SizedBox(height: 100.0),
                  Text(bmi, style: kResultNumberStyle),
                  SizedBox(height: 100.0),
                  Text('Normal BMI range: 18.5 - 25kg/m2', style: kResultInterpretationStyle),
                  SizedBox(height: 100.0),
                  Text(bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: kResultInterpretationStyle),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
