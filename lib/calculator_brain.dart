
import 'package:bmicalculator/screens/input_page.dart';
import 'dart:math';

class Calculator {
  late double weight;
  late double height;

  Calculator({required this.weight, required this.height}) {}

  late double _bmi;

  String getbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getrate() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body \nweight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body \nweight. Good job!';
    } else {
      return 'You have a lower than normal body \nweight. You can eat a bit more.';
    }
  }
}