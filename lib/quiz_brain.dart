
import 'package:flutter/material.dart';

import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class QuizzBrain {
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood  is green.', true)
  ];

  int _queNo = 0;

  get context => null;
  void questionNo() {

      if(_queNo >= _questionBank.length-1){

        _queNo = 0;

      }else{
        _queNo++;
      }

    print(_queNo);
  }

  String getQuestionText() {
    return _questionBank[_queNo].questionText.toString();
  }

  bool? getQuestionAns() {
    return _questionBank[_queNo].questionAnswer;
  }
}
