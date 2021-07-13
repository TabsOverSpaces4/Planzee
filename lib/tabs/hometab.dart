import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mockapp/widgets/custom_action_bar.dart';

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
      home: HomeTab(),
    );
  }
}

class HomeTab extends StatelessWidget {
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
                  height: deviceWidth * .28,
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
                        image: AssetImage("lib/assets/images/avatar.png"),)
                            ),
                            
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Text(
                        "Welcome to this new Event",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),
                  CustomActionBar(
          hasTitle: false,
          hasBackArrow: false,
          hasBackground: false,
        )

            ]),

        ]
        
      ),
      
      )
      
    
    );
    
    
  }
}