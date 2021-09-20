import 'package:bmi/commonwidgets/custom_button.dart';
import 'package:bmi/commonwidgets/input_field.dart';
import 'package:bmi/screens/login/login.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner;
  String email;
  String password;
  String name;

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
                  'Registration for BMI',
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
                hintText: 'Enter name',
                leading: Icons.person,
                obscure: false,
                userTyped: (value) {
                  name = value;
                },
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
                  if (name != null && password != null && email != null) {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                      await _auth.createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      if (newUser != null) {
                        await newUser.user.updateDisplayName(name);
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                                (route) => false);
                      }
                    } catch (e) {
                      setState(() {
                        showSpinner = false;
                      });
                      EdgeAlert.show(context,
                          title: 'Signup Failed',
                          description: e.toString(),
                          gravity: EdgeAlert.BOTTOM,
                          icon: Icons.error,
                          backgroundColor: Colors.deepPurple[900]);
                    }
                  } else {
                    EdgeAlert.show(context,
                        title: 'Signup Failed',
                        description: 'All fields are required.',
                        gravity: EdgeAlert.BOTTOM,
                        icon: Icons.error,
                        backgroundColor: Colors.deepPurple[900]);
                  }
                },
                text: 'sign up',
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
                          return LoginScreen();
                        }));
                  },
                  child: Text(
                    'or log in instead',
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
