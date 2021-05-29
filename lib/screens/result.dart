import 'package:flutter/material.dart';
import 'package:tech_quiz/commons/answer.dart';
import 'package:tech_quiz/commons/cpu.dart';
import 'package:tech_quiz/screens/Quiz.dart';
class Result extends StatelessWidget {
  Cpu cpu=Cpu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Result!"),
        ),
        elevation: 10.0,
        backgroundColor: Colors.lightBlue,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          SizedBox(height: 200,),
          Text("Congrats! Quiz Completed",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500
            ),),
          SizedBox(height: 200,),
          Answer(text: 'Start Again',color: Colors.lightBlue,onPress: (){
            cpu.restart();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Quiz()));
          },)
        ],
      )
    );
  }
}
