import 'package:flutter/material.dart';
import 'package:planzee/pages/LSOptions.dart';
import 'package:planzee/pages/Signin.dart';
import 'package:planzee/pages/Signup.dart';
import 'package:planzee/pages/about.dart';
import 'package:planzee/pages/loading.dart';


void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => Loading(),
        '/login': (context) => LSOptions(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        // '/profile': (context) => Profile(),
        // '/info': (context) => Info(),
        // '/home': (context) => Homepage(),
        '/about': (context) => About(),
      },
      
    )
   
    );

