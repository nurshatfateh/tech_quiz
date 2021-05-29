import 'package:flutter/material.dart';
import './screens/Quiz.dart';
void main() {
  runApp(TechQuiz());
}
class TechQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Quiz(),
    );
  }
}



