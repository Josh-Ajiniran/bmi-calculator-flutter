import 'dart:math';

class BMICalculator {
  BMICalculator({this.weight, this.height});
  double _bmi;

  int weight;
  int height;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi >= 26) {
      return "Overweight";
    } else if (_bmi < 18) {
      return "Underweight";
    } else {
      return "Normal";
    }
  }

  String getBMIInterpretation() {
    if (_bmi >= 26) {
      return "Hey!, watch your weight, exercise more and eat less fatty food!";
    } else if (_bmi < 18) {
      return "Try eating up and exercising, you need some more weight";
    } else {
      return "You have a normal body weight. Good job";
    }
  }
}
