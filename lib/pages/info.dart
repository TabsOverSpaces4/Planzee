//this is the addEvent page, just didn't want to change all page names. 
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
      home: Info(),
    ));

class Info extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<Info> {
  int ninjaLevel = 0;

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
                      
                      SizedBox(height: deviceWidth * .13),
                      Text(
                        "New Event",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),
              
                  Container(
                    margin: EdgeInsets.only(
                        top: deviceWidth * .32, left: deviceWidth * .02, right: deviceWidth * .02),
                    height: deviceWidth * .55,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: deviceHorizontal * .1,
                          right: deviceHorizontal * .1,
                          top: deviceWidth * .025),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Task name",
                                hintText: "dogge coin",
                                suffixIcon: Icon(Icons.note),
                                ),
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "task duration",
                                hintText: "duration",
                                suffixIcon: Icon(Icons.timer),
                                ),
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(obscureText: true,
                            decoration: InputDecoration(
                                labelText: "About the Task",
                              
                                suffixIcon: Icon(Icons.info_outline)),
                          ),
                          SizedBox(height: deviceWidth * .03),
                          Text(
                        "OR",
                        style: TextStyle(
                            fontSize: deviceWidth / 40, color: Colors.grey),
                      ),
                      SizedBox(height: deviceWidth * .03),
                      TextFormField(obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Enter by Link",
                              
                                suffixIcon: Icon(Icons.link_outlined,))
                          ),
                          SizedBox(height: deviceWidth * .03),
                          Container(
                  alignment: Alignment.center,

                  
                  
                  child: IconButton(
            icon: Icon(Icons.camera),
            color: Colors.purple[700],
            iconSize: 40.0,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
                          )],
                      ),
                    ),
                  ),

                  
                
              
            
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.navigate_next_outlined, color: Colors.pink,)
      ),
      ),
    );
  }
}