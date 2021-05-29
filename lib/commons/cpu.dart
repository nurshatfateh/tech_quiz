import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_quiz/commons/question.dart';
import 'package:tech_quiz/screens/result.dart';
class Cpu{
  List<Question>_questions=[
    Question('Intel chips are based on x86 architecture',true),
    Question('Sony makes XBOX consoles', false),
    Question('IMAX is the product of Apple Corporation', false),
    Question('Elon Musk is the CEO of Tesla', true),
    Question('Starlink is owned by Jeff Bezos',false),
    Question('RTX 3080 is made by AMD',false),
    Question('CES is the Global Stage for Tech Innovation',true),
    Question('Exynos chips are made by HUAWEI',false),
    Question('Amazon is owned by Elon Musk',false),
    Question('Flutter was launched in 2018',true),
    Question('Tencent is a Chinese multinational technology company',true),
  ];
  List<Icon> _icons = [];
  var _questionIndex=0;
  String get getQuestionText{
    return _questions[_questionIndex].question;
  }
  bool get getAnswer{
    return _questions[_questionIndex].Answer;
  }
  void updateQuestionIndex(context)
  {
    if(_questionIndex<_questions.length-1) {
      _questionIndex++;
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Result(), ),);
    }
      

  }
  void restart(){
    _questionIndex=0;

  }
  List<Icon> get icons{
    return _icons;
  }
  void correctIcon(){
    _icons.add(Icon(Icons.check,color: Colors.green,));
  }
  void wrongIcon(){
    _icons.add(Icon(Icons.close,color: Colors.red,));
  }
}