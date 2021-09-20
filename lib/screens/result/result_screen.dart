import 'package:bmi/commonwidgets/bottom_button.dart';
import 'package:bmi/commonwidgets/reusablecard.dart';
import 'package:bmi/contants/contant.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultStatus;
  final String interpretation;

  ResultScreen({@required this.bmiResult,@required this.resultStatus,@required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 85.0),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,

                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultStatus,style: kResult2TextStyle,),
                    Text(bmiResult,style: kTitleTextStyle,),
                    Text(interpretation,style: kTextStyle,),
                  ],
                ),
              )),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
