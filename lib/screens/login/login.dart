import 'package:bmi/commonwidgets/custom_button.dart';
import 'package:bmi/commonwidgets/input_field.dart';
import 'package:bmi/home/home_screen.dart';
import 'package:bmi/screens/registration/registration.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner;
  String email;
  String password;

  @override
  void initState() {
    showSpinner = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Icon(
                    Icons.accessibility_new,
                    size: 120,
                    color: Colors.deepPurple[900],
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Hero(
                tag: 'BMI',
                child: Text(
                  'Login for BMI',
                  style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              InputFiled(
                hintText: 'Enter e-mail',
                leading: Icons.mail,
                keyboard: TextInputType.emailAddress,
                obscure: false,
                userTyped: (value) {
                  email = value;
                },
              ),
              InputFiled(
                hintText: 'Password',
                leading: Icons.lock,
                keyboard: TextInputType.visiblePassword,
                obscure: true,
                userTyped: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomButton(
                onpress: () async {
                  if (password != null && email != null) {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final loggedUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (loggedUser != null) {
                        setState(() {
                          showSpinner = false;
                        });

                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                                (route) => false);
                      }
                    } catch (e) {
                      setState(() {
                        showSpinner = false;
                      });
                      EdgeAlert.show(context,
                          title: 'Login Failed',
                          description: e.toString(),
                          gravity: EdgeAlert.BOTTOM,
                          icon: Icons.error,
                          backgroundColor: Colors.deepPurple[900]);
                    }
                  } else {
                    EdgeAlert.show(context,
                        title: 'Uh oh!',
                        description: 'Please enter the email and password.',
                        gravity: EdgeAlert.BOTTOM,
                        icon: Icons.error,
                        backgroundColor: Colors.deepPurple[900]);
                  }
                },
                text: 'sign in',
                accentColor: Colors.white,
                mainColor: Colors.deepPurple,
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return RegistrationScreen();
                        }));
                  },
                  child: Text(
                    'or sign up instead',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.deepPurple),
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                'Made by Mahbub Rahman',
                style: TextStyle(fontFamily: 'Poppins'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

