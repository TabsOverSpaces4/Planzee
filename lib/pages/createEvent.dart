//this is the addEvent page, just didn't want to change all page names. 
import 'package:flutter/material.dart';
import 'package:planzee/widgets/custom_button.dart';


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
    TextEditingController dateVal = TextEditingController();
    Future openDatePicker() async {
      DateTime picked = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime.now(),
          lastDate: new DateTime.now().add(Duration(days: 1825))
      );
      //if(picked != null) setState(() => _value = picked.toString());
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: deviceWidth * .24,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
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
                        top: deviceWidth * .32, left: deviceWidth * .025, right: deviceWidth * .025),
                    height: deviceWidth * .55,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                                labelText: "Event Name",
                                labelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20
                                ),
                                hintText: "",
                                hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                                suffixIcon: Icon(Icons.note),
                                ),
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Event Date",
                                labelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20
                                ),
                                hintText: "",
                                suffixIcon: Icon(Icons.timer),
                                ),
                            onTap:() {
                              FocusScope.of(context).requestFocus(new FocusNode());
                              openDatePicker();
                            },
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Event Description",
                                labelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20
                                ),
                                suffixIcon: Icon(Icons.info_outline)),
                          ),
                          SizedBox(height: deviceWidth * .03),
                          Custombtn(
                            text: "Create",
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          )


                          ],
                      ),
                    ),
                  ),
            ],
          ),
        ]),
      //   floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/home');
      //     setState(() {
      //       ninjaLevel += 1;
      //     });
      //   },
      //   backgroundColor: Colors.grey[800],
      //   child: Icon(Icons.navigate_next_outlined, color: Colors.pink,)
      // ),
      ),
    );
  }
}