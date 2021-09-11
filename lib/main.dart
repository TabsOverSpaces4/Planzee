import 'package:flutter/material.dart';
import 'package:planzee/features/taskmanager.dart';
import 'package:planzee/pages/LSOptions.dart';
import 'package:planzee/pages/Signin.dart';
import 'package:planzee/pages/Signup.dart';
import 'package:planzee/pages/about.dart';
import 'package:planzee/pages/eventDashboard.dart';
import 'package:planzee/pages/createEvent.dart';
import 'package:planzee/pages/landingpage.dart';
import 'package:planzee/pages/loading.dart';
import 'package:planzee/pages/eventList.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
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
        '/taskpage': (context) => TMPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF10676a),
        accentColor: Color(0xFFE9F2F2),
      )

    )
   
    );

