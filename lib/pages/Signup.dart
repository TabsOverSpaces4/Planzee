import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Error!"),
            content: Container(
              child: Text(error),
            ),
            actions: [
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void _submitForm() async {
    // Set the form to loading state
    setState(() {
      _registerformLoading = true;
    });

    String _createAccountFeedback = await _createAccount();
    if (_createAccountFeedback != null) {
      _alertDialogBuilder(_createAccountFeedback);

      setState(() {
        _registerformLoading = false;
      });

      //Sign in was successful and the user was routed towards the homescreen using pop funciton
      Navigator.pop(context);
    } else {
      Navigator.pushNamed(context, '/profile');
    }
  }

  // Create a new user account
  Future<String> _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _registerEmail, password: _registerPassword);
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  //Default Form Loading State
  bool _registerformLoading = false;

  //Form input field Values
  String _registerEmail = "";
  String _registerPassword = "";

  // Focus Node for the input fields
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceWidth = MediaQuery.of(context).size.height;
    // final deviceHorizontal = MediaQuery.of(context).size.width;
    // return SafeArea(
    //     child: Scaffold(
    //         backgroundColor: Theme.of(context).accentColor,
    //         body: ListView(children: [
    //           Column(children: [
    //             Container(
    //                 height: deviceWidth * .24,
    //                 width: double.infinity,
    //                 color: Theme.of(context).primaryColor,
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       margin: EdgeInsets.only(top: deviceWidth * .06),
    //                       height: deviceWidth * .10,
    //                       width: deviceWidth * .10,
    //                       decoration: BoxDecoration(
    //                           border: Border.all(width: 2, color: Colors.white),
    //                           borderRadius: BorderRadius.circular(15),
    //                           color: Colors.white,
    //                           image: DecorationImage(
    //                             fit: BoxFit.cover,
    //                             image: AssetImage("lib/assets/images/logo.png"),
    //                           )),
    //                     ),
    //                     SizedBox(height: deviceWidth * .01),
    //                     Text(
    //                       "Sign Up",
    //                       style: TextStyle(
    //                           fontSize: deviceWidth / 32, color: Colors.white),
    //                     ),
    //                   ],
    //                 )),
    //             SizedBox(height: deviceWidth * .08),
    //             Container(
    //                 child: Column(
    //               children: [
    //                 CustomInpt(
    //                   hintText: "Full Name",
    //                   onChanged: (value) {
    //                     //_registerEmail = value;
    //                   },
    //                   onSubmitted: (value) {
    //                     // _passwordFocusNode.requestFocus();
    //                   },
    //                   textInputAction: TextInputAction.next,
    //                 ),
    //                 SizedBox(height: deviceWidth * .01),
    //                 CustomInpt(
    //                   hintText: "Email",
    //                   onChanged: (value) {
    //                     _registerEmail = value;
    //                   },
    //                   onSubmitted: (value) {
    //                     _passwordFocusNode.requestFocus();
    //                   },
    //                   textInputAction: TextInputAction.next,
    //                 ),
    //                 SizedBox(height: deviceWidth * .01),
    //                 CustomInpt(
    //                   hintText: "Password",
    //                   onChanged: (value) {
    //                     _registerPassword = value;
    //                   },
    //                   focusNode: _passwordFocusNode,
    //                   isPasswordField: true,
    //                   onSubmitted: (value) {
    //                     _submitForm();
    //                   },
    //                 ),
    //                 SizedBox(height: deviceWidth * .01),
    //                 CustomInpt(
    //                   hintText: "Confirm Password",
    //                   isPasswordField: true,
    //                 ),
    //                 SizedBox(height: deviceWidth * .01),
    //                 Custombtn(
    //                   text: "Create Account",
    //                   onPressed: () {
    //                     _submitForm();
    //                   },
    //                   isLoading: _registerformLoading,
    //                 ),
    //                 SizedBox(height: deviceWidth * .01),
    //                 Custombtn(
    //                   text: "Already have an account? Sign In",
    //                   onPressed: () {
    //                     Navigator.pushNamed(context, '/signin');
    //                   },
    //                   outlineBtn: true,
    //                 )
    //               ],
    //             ))
    //           ])
    //         ])));
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: deviceWidth * .08),
                  height: deviceWidth * .17,
                  width: deviceWidth * .17,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/images/logo.png"),
                      )),
                ),
                // SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            //height: deviceHeight * .804,
            height: deviceHeight * .65,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
              ),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  _registerEmail = value;
                  },
                  onSubmitted: (value) {
                  _passwordFocusNode.requestFocus();
                  },
                  textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: deviceWidth * .01),
                  CustomInpt(
                  hintText: "Password",
                  onChanged: (value) {
                  _registerPassword = value;
                  },
                  focusNode: _passwordFocusNode,
                  isPasswordField: true,
                  onSubmitted: (value) {
                  _submitForm();
                  },
                  ),
                  SizedBox(height: deviceWidth * .01),
                  CustomInpt(
                  hintText: "Confirm Password",
                  isPasswordField: true,
                  ),
                  SizedBox(height: deviceWidth * .01),
                  Custombtn(
                  text: "Create Account",
                  onPressed: () {
                  _submitForm();
                  },
                  isLoading: _registerformLoading,
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
            ),
          ),
        ],
      ),
    );
  }
}
