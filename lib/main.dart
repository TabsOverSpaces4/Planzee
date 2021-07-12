import 'package:flutter/material.dart';
import 'package:mockapp/pages/LSOptions.dart';
import 'package:mockapp/pages/Signup.dart';
import 'package:mockapp/pages/Signin.dart';
import 'package:mockapp/pages/home.dart';
import 'package:mockapp/pages/profile.dart';
import 'package:mockapp/pages/info.dart';
import 'package:mockapp/pages/loading.dart';
import 'package:mockapp/pages/about.dart';


void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => Loading(),
        '/login': (context) => Login(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/profile': (context) => Profile(),
        '/info': (context) => Info(),
        '/home': (context) => Homepage(),
        '/about': (context) => About(),
      },
      
    )
   
    );

