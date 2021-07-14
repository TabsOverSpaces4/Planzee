import 'package:flutter/material.dart';
import 'package:planzee/animation/try_fade.dart';

class LSOptions extends StatefulWidget {


  @override
  _LSOptionsState createState() => _LSOptionsState();
}

class _LSOptionsState extends State<LSOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage(
                            "lib/assets/images/logo.png",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                FadeAnimation(
                  1,
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1,
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple[700],
                    ),
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1,
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple[700],
                    ),
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
