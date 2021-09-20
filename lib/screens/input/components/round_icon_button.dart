
import 'package:bmi/contants/contant.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPrerssed;
  RoundIconButton({@required this.icon,this.onPrerssed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: kActiveCardColor,),
        elevation: 5,
        constraints: BoxConstraints.tightFor(
          width: 50,
          height: 50
        ),
        fillColor: Colors.white,
        onPressed: onPrerssed);
  }
}
