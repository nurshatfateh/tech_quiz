import 'package:flutter/material.dart';
import 'package:tech_quiz/commons/answer.dart';
import 'package:tech_quiz/commons/cpu.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Cpu cpu=Cpu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tech Quiz!"),
        ),
        elevation: 10.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(

        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(child: Text(
              cpu.getQuestionText,
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 25.0,
                  fontWeight: FontWeight.w700

            ),
            )
            ),
          ),
            Expanded(child: Answer(text: 'True',color: Colors.green,onPress:(){
              setState(() {
                if(cpu.getAnswer==true)
                {
                  cpu.correctIcon();
                }
                else
                {
                  cpu.wrongIcon();
                }
                cpu.updateQuestionIndex(context);
              });
            })),
            Expanded(child: Answer(text: 'False',color: Colors.red,onPress:(){
              setState(() {
                if(cpu.getAnswer==false)
                  {
                    cpu.correctIcon();
                  }
                else
                  {
                    cpu.wrongIcon();
                  }

                cpu.updateQuestionIndex(context);
              });
            })),
            Container(margin: EdgeInsets.symmetric(horizontal: 15.0,vertical:30.0),child: Row(
              children: cpu.icons,
            ))
      ],
      ),
      )
    );
  }
}
