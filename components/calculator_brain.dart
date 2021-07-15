import 'dart:math';

import 'package:flutter/material.dart';



class Calculatorbrain {

  Calculatorbrain({@required this.height,@required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculatebmi(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result(){
    if(_bmi>25)
      return 'OVERWEIGHT!';
    else if(_bmi>18.5)
      return 'NORMAL!';
    else
      return 'UNDERWEIGHT!';
  }

  String getinterpretatiion(){
    if(_bmi>25)
      return 'YOU ARE OVERWEIGHT! START EXERCISING FOR A BETTER HEALTH. ALL THE BEST! ;)';
    else if(_bmi>18.5)
      return 'WOOHOO! GOOD JOB. MANTAIN THIS BODY ;)';
    else
      return 'WELL YOU CAN SURELY EAT SOMETHING :>';
  }

}