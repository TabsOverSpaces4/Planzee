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
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    DateTime selectedDate = DateTime.now();
    TextEditingController dateVal = TextEditingController();
    Future openDatePicker() async {
      DateTime picked = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime.now(),
          lastDate: new DateTime.now().add(Duration(days: 1825)),
          initialEntryMode: DatePickerEntryMode.input,
      );
      //if(picked != null) setState(() => _value = picked.toString());
    }
    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Theme.of(context).accentColor,
    //     body: ListView(children: [
    //       Stack(
    //         children: [
    //           Container(
    //               height: deviceWidth * .24,
    //               width: double.infinity,
    //               color: Theme.of(context).primaryColor,
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //
    //                   SizedBox(height: deviceWidth * .13),
    //                   Text(
    //                     "New Event",
    //                     style: TextStyle(
    //                         fontSize: deviceWidth / 32, color: Colors.white),
    //                   ),
    //                 ],
    //               )),
    //
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: deviceWidth * .32, left: deviceWidth * .025, right: deviceWidth * .025),
    //                 height: deviceWidth * .55,
    //                 width: MediaQuery.of(context).size.width * .9,
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.circular(8),
    //                 ),
    //                 child: Padding(
    //                   padding: EdgeInsets.only(
    //                       left: deviceHorizontal * .1,
    //                       right: deviceHorizontal * .1,
    //                       top: deviceWidth * .025),
    //                   child: Column(
    //                     children: [
    //                       TextFormField(
    //                         decoration: InputDecoration(
    //                             labelText: "Event Name",
    //                             labelStyle: TextStyle(
    //                                 color: Theme.of(context).primaryColor,
    //                                 fontSize: 20
    //                             ),
    //                             hintText: "",
    //                             hintStyle: TextStyle(color: Theme.of(context).primaryColor),
    //                             suffixIcon: Icon(Icons.note),
    //                             ),
    //                       ),
    //                       SizedBox(height: deviceWidth * .01),
    //                       TextFormField(
    //                         decoration: InputDecoration(
    //                             labelText: "Event Date",
    //                             labelStyle: TextStyle(
    //                                 color: Theme.of(context).primaryColor,
    //                                 fontSize: 20
    //                             ),
    //                             hintText: "",
    //                             suffixIcon: Icon(Icons.timer),
    //                             ),
    //                         onTap:() {
    //                           FocusScope.of(context).requestFocus(new FocusNode());
    //                           openDatePicker();
    //                         },
    //                       ),
    //                       SizedBox(height: deviceWidth * .01),
    //                       TextFormField(
    //                         decoration: InputDecoration(
    //                             labelText: "Event Description",
    //                             labelStyle: TextStyle(
    //                                 color: Theme.of(context).primaryColor,
    //                                 fontSize: 20
    //                             ),
    //                             suffixIcon: Icon(Icons.info_outline)),
    //                       ),
    //                       SizedBox(height: deviceWidth * .03),
    //                       Custombtn(
    //                         text: "Create",
    //                         onPressed: () {
    //                           Navigator.pushNamed(context, '/home');
    //                         },
    //                       )
    //
    //
    //                       ],
    //                   ),
    //                 ),
    //               ),
    //         ],
    //       ),
    //     ]),
    //
    //   ),
    // );
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
                    'New Event',
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
            child:  Padding(
            padding: EdgeInsets.only(
                          left: deviceWidth * .1,
                          right: deviceWidth * .1,
                          top: deviceWidth * .025),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}