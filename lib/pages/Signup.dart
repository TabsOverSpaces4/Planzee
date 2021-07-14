import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.height;
    final deviceHorizontal = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey[900],
            body: ListView(children: [
              Column(children: [
                Container(
                    height: deviceWidth * .32,
                    width: double.infinity,
                    color: Colors.purple[700],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: deviceWidth * .08),
                          height: deviceWidth * .14,
                          width: deviceWidth * .14,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("lib/assets/images/logo.png"),
                              )),
                        ),
                        SizedBox(height: deviceWidth * .01),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: deviceWidth / 32, color: Colors.white),
                        ),
                      ],
                    )),
                SizedBox(height: deviceWidth * .02),
                Container(
                    child: Column(
                  children: [
                    CustomInpt(
                      hintText: "Full Name",
                      onChanged: (value) {
                        //_registerEmail = value;
                      },
                      onSubmitted: (value) {
                        // _passwordFocusNode.requestFocus();
                      },
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: deviceWidth * .01),
                    CustomInpt(
                      hintText: "Email",
                      onChanged: (value) {
                        //_registerEmail = value;
                      },
                      onSubmitted: (value) {
                        // _passwordFocusNode.requestFocus();
                      },
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: deviceWidth * .01),
                    CustomInpt(
                      hintText: "Password",
                      onChanged: (value) {
                        //_registerPassword = value;
                      },
                      //focusNode: _passwordFocusNode,
                      isPasswordField: true,
                      onSubmitted: (value) {
                        //_submitForm();
                      },
                    ),
                    SizedBox(height: deviceWidth * .01),
                    CustomInpt(
                      hintText: "Confirm Password",
                      onChanged: (value) {
                        //_registerPassword = value;
                      },
                      //focusNode: _passwordFocusNode,
                      isPasswordField: true,
                      onSubmitted: (value) {
                        //_submitForm();
                      },
                    ),
                    SizedBox(height: deviceWidth * .01),
                    Custombtn(
                      text: "Create Account",
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                        // _submitForm();
                      },

                      // isLoading: _registerformLoading,
                    ),
                    SizedBox(height: deviceWidth * .01),
                    Custombtn(
                      text: "Already have an account? Sign In",
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      outlineBtn: true,
                    )
                  ],
                ))
              ])
            ])));
  }
}
