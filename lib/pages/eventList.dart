import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planzee/widgets/custom_button.dart';

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
        backgroundColor: Theme.of(context).accentColor,
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: deviceWidth * .24,
                  width: double.infinity,
                  color:Theme.of(context).primaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: deviceWidth * .08),
                        height: deviceWidth * .10,
                        width: deviceWidth * .10,
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
                        "Your events",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),

            ]),
            SizedBox(height: 40.0,),
            SizedBox(height: 300.0),
            // FloatingActionButton(
            //     backgroundColor: Theme.of(context).primaryColor,
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/info');
            //      },
            //     child: Icon(Icons.add_outlined)
            //         )
          Custombtn(
            text: "Enter using code",
          ),
          Custombtn(
            text: "Create new Event",
            onPressed: () {
              Navigator.pushNamed(context, '/info');
              },
          )
        ]
      ),)
      
    
    );
    
  }
}