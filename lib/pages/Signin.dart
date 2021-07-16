import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planzee/pages/Signup.dart';
import 'package:planzee/widgets/custom_button.dart';
import 'package:planzee/widgets/custom_input.dart';

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
      home: SignIn(),
    );
  }
}
//All commented changes are to be made post firebase initiation
class SignIn extends StatelessWidget {
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
                    height: deviceWidth * .4,
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
                          "Sign In",
                          style: TextStyle(
                              fontSize: deviceWidth / 32, color: Colors.white),
                        ),
                      ],
                    )),
                    SizedBox(height: deviceWidth * .01),
                Container(
                  child: Column(
                    children: [
                      CustomInpt(
                        hintText: "Email..",
                        onChanged: (value) {
                          // _loginEmail = value;
                        },
                        onSubmitted: (value) {
                          // _passwordFocusNode.requestFocus();
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: deviceWidth * .01),
                      CustomInpt(
                        hintText: "Password..",
                        onChanged: (value) {
                          // _loginPassword = value;
                        },
                        //focusNode: _passwordFocusNode,
                        isPasswordField: true,
                        onSubmitted: (value) {
                          // _submitForm();
                        },
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Custombtn(
                        text: "Login",
                        onPressed: () {
                          //_submitForm();
                        },
                        // isLoading: _loginFormLoading,
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Custombtn(
                        text: "Don't have an account? SignUp here",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        outlineBtn: true,
                      ),
                    ],
                  ),
                 
                ),
              ])
            ]
            )
            )
            );
  }
}
