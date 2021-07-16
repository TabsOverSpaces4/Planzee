import 'package:flutter/material.dart';
import 'package:planzee/pages/LSOptions.dart';
import 'package:planzee/pages/Signin.dart';
import 'package:planzee/pages/Signup.dart';
import 'package:planzee/pages/about.dart';
import 'package:planzee/pages/home.dart';
import 'package:planzee/pages/info.dart';
import 'package:planzee/pages/landingpage.dart';
import 'package:planzee/pages/loading.dart';
import 'package:planzee/pages/profile.dart';


void main() => runApp(MaterialApp(
      initialRoute: '/landingpage',
      routes: {
        '/': (context) => Loading(),
        '/landingpage': (context) => Landingpage(),
        '/login': (context) => LSOptions(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignupPage(),
        '/profile': (context) => Profile(),
        '/info': (context) => Info(),
        '/home': (context) => Homepage(),
        '/about': (context) => About(),
      },
      
    )
   
    );

