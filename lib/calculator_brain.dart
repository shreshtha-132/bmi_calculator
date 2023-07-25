import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (bmi >= 25) {
      return "oveweight";
    } else if (bmi > 18) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return "kam khaya kar bhai";
    } else if (bmi > 18) {
      return "tera bhi sahi hai";
    } else {
      return "kuch khayega bhai ?";
    }
  }
}
