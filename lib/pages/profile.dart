import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.height;
    final deviceHorizontal = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: deviceWidth * .3,
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
                        image: AssetImage("lib/assets/images/logo.png"),)
                            ),
                            
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Text(
                        "No events",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),

            ]),
            SizedBox(height: 40.0,),
            SizedBox(height: 500.0),
            FloatingActionButton(
        backgroundColor: Colors.purple[700],
        onPressed: () { 
          Navigator.pushNamed(context, '/info');
         },
        child: Icon(Icons.add_outlined)
            )
        ]
      ),)
      
    
    );
    
  }
}