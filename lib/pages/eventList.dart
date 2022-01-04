import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planzee/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceWidth = MediaQuery.of(context).size.height;
    // final deviceHorizontal = MediaQuery.of(context).size.width;
    // return SafeArea(
    //     child: Scaffold(
    //   backgroundColor: Theme.of(context).accentColor,
    //   body: ListView(children: [
    //     Stack(children: [
    //       Container(
    //           height: deviceWidth * .24,
    //           width: double.infinity,
    //           color: Theme.of(context).primaryColor,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(
    //                 margin: EdgeInsets.only(top: deviceWidth * .08),
    //                 height: deviceWidth * .10,
    //                 width: deviceWidth * .10,
    //                 decoration: BoxDecoration(
    //                     border: Border.all(width: 2, color: Colors.white),
    //                     borderRadius: BorderRadius.circular(15),
    //                     color: Colors.white,
    //                     image: DecorationImage(
    //                       fit: BoxFit.cover,
    //                       image: AssetImage("lib/assets/images/logo.png"),
    //                     )),
    //               ),
    //               SizedBox(height: deviceWidth * .01),
    //               Text(
    //                 "Your events",
    //                 style: TextStyle(
    //                     fontSize: deviceWidth / 32, color: Colors.white),
    //               ),
    //             ],
    //           )),
    //     ]),
    //     SizedBox(
    //       height: 40.0,
    //     ),
    //     SizedBox(height: 300.0),
    //     Custombtn(
    //         text: "Enter using code",
    //         onPressed: () {
    //           // Navigator.pushNamed(context, '/taskpage');
    //         }),
    //     Custombtn(
    //       text: "Create new Event",
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/info');
    //       },
    //     )
    //   ]),
    // ));

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
                        'Your Events',
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Custombtn(
                        text: "Enter using code",
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    height: deviceHeight *.2,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Enter Code.....",
                                            labelStyle: TextStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontSize: 20
                                            ),
                                            hintText: "",
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/home');
                                          },
                                          child: Text(
                                            'Enter Event',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          color:Theme.of(context).primaryColor ,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                        )
                                      ],
                                    ),
                                  )
                                );
                              }
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Custombtn(
                        text: "Create new Event",
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          },
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        );

  }
}
