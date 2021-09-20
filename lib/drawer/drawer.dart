
import 'package:bmi/about/about_screen.dart';
import 'package:bmi/home/home_screen.dart';
import 'package:bmi/screens/input/input_screen.dart';
import 'package:bmi/screens/login/login.dart';
import 'package:bmi/share_pref/share_pref.dart';
import 'package:flutter/material.dart';


class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 35,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Text(
                          'BMI Index',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 20),
                      )),
                  SizedBox(
                    height: 70,
                  ),_drawerItem(
                    title: 'Home',
                    icon: Icons.home,
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => HomePage()),
                              (route) => false);
                    },
                  ),
                  _drawerItem(
                    title: 'Calculate BMI',
                    icon: Icons.accessibility_new,
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => InputScreen()),
                              (route) => false);
                    },
                  ),
                  _drawerItem(
                    title: 'About BMI',
                    icon: Icons.person,
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => AboutPage()),
                              (route) => false);
                    },
                  ),
                  _drawerItem(
                    title: 'Logout',
                    icon: Icons.exit_to_app,
                    onTap: () {
                      Prefs.clearPref();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                              (route) => false);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell _drawerItem({
    @required IconData icon,
    @required String title,
    @required Function onTap,
  }) {
    return InkWell(
      onTap: () {
        onTap();
        //this.onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 58,
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
