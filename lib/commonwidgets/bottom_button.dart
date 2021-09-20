import 'package:bmi/contants/contant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  BottomButton({this.title,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kResultTextStyle,
          ),
        ),
        color: kActiveCardColor,
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
