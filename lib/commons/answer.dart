import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;

  Answer({this.text,this.color,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
        child: Center(child: Text(
          text,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0,color: Colors.white),)),
      ),
    );
  }
}
