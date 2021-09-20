import 'package:bmi/commonwidgets/app_bar.dart';
import 'package:bmi/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBarTitleWidget(
            title: 'BMI',
            subTitle: 'Index',
          ),

        ),
        drawer: Drawer(
          child: DrawerPage(),
        ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('BMI UNIT',style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
           Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(image: AssetImage("assets/images/bmi.jpg")),
    ),
         ],
       ),
    );


  }
}
