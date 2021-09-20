import 'dart:math';

class Calculation{
  final int height;
  final int weight;
  double _bmi;

  Calculation(this.weight,this.height);

  String calculateBMI(){
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if(_bmi>40){
      return 'You are morbidly obese';
    }else if(_bmi>30){
      return 'You are obese';
    } else if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>40){
      return 'Your BMI is not in control. You should communicate with doctor.';
    }else if(_bmi>30){
      return 'You are going to be sick, You should exercise more and more';
    } else if(_bmi>=25){
      return 'You have a higher than normal body. Try to exercise more';
    }else if(_bmi>18.5){
      return 'You have a normal body weight. Good job!';
    }else {
      return 'You have a lower than normal body. You should eat a bit more';
    }
  }

}