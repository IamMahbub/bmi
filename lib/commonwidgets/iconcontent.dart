import 'package:bmi/contants/contant.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({@required this.icon, @required this.label});


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: kWhite,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kTextStyle,
        )
      ],
    ) ;
  }
}