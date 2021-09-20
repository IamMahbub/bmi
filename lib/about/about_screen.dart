import 'package:bmi/commonwidgets/app_bar.dart';
import 'package:bmi/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AboutPage extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('About BMI unit',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Body Mass Index (BMI) is a person’s weight in kilograms divided by the square of height in meters. A high BMI can indicate high body fatness. BMI screens for weight categories that may lead to health problems, '
                  'but it does not diagnose the body fatness or health of an individual.',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: FontAwesomeIcons.font.fontFamily,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('About Adult BMI',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('BMI does not measure body fat directly, but BMI is moderately correlated with more direct measures of body fat. Furthermore, BMI appears to be as strongly correlated with '
                  'various metabolic and disease outcome as are these more direct measures of body fatness',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: FontAwesomeIcons.font.fontFamily,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Child & Teen BMI',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('For children and teens, BMI is age- and sex-specific and is often referred to as BMI-for-age. In children, '
                  'a high amount of body fat can lead to weight-related diseases and other health issues. '
                  'Being underweight can also put one at risk for health issues.A high BMI can indicate high body fatness. BMI does not measure body fat directly, '
                  'but BMI is correlated with more direct measures of body fat',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: FontAwesomeIcons.font.fontFamily,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Children BMI Tool for Schools',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The Children’s BMI Tool for Schools is an Excel spreadsheet intended for use by a school, child care, and other professionals who want to compute Body Mass Index (BMI)-for-age '
                  'for a group of up to 2,000 children (metric version) or 20,000 children (U.S. version).',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: FontAwesomeIcons.font.fontFamily,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Losing Weight',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('It’s natural for anyone trying to lose weight to want to lose it very quickly. But people who lose weight gradually and steadily (about 1 to 2 pounds per week) are more successful at keeping weight off. Healthy weight loss isn’t just about a “diet” or “program”. '
                  'It’s about an ongoing lifestyle that includes long-term changes in daily eating and exercise habits.',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: FontAwesomeIcons.font.fontFamily,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,

                ) ,),
            )

          ],
        ),
      ),
    );


  }
}
