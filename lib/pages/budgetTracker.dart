import 'dart:ui';
import 'package:planzee/widgets/budgetCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BudgetHome extends StatefulWidget {
  @override
  _BudgetHomeState createState() => _BudgetHomeState();
}

class _BudgetHomeState extends State<BudgetHome> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle:true,
        title: Text(
            'Budget Tracker',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Budget',
                    style: TextStyle(
                        color:Colors.black,
                        fontSize: 25
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                   //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: deviceHeight * .11,
                    width: deviceWidth * .55,
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Expanded(
                             child: ListTile(
                               leading: FaIcon(FontAwesomeIcons.rupeeSign, color: Colors.black),
                               title: Text(
                                   '12000',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 30
                                 ),
                                 textAlign: TextAlign.center,
                               ),

                             ),
                           )
                         ],
                        ),

                    ),
                  ),
                ),

              ],
            ),
            Container(
              height: deviceHeight * .65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 4),
                child: RawScrollbar(
                  thumbColor: Colors.black,
                  child: ListView(
                    children: [

                      BudgetCard(
                          reason: 'Sponsorship',
                          amount: '+ 12,000',
                          date: '11/08/2021',
                          isAdded: true,
                        ),
                      BudgetCard(
                        reason: 'Supplies',
                        amount: '- 2,000',
                        date: '04/08/2021',
                        isAdded: false,
                      ),
                      BudgetCard(
                        reason: 'Food Vendor',
                        amount: '- 1,600',
                        date: '03/08/2021',
                        isAdded: false,
                      ),
                      BudgetCard(
                        reason: 'Venue ',
                        amount: '- 2,500',
                        date: '03/08/2021',
                        isAdded: false,
                      ),
                      BudgetCard(
                        reason: 'Sponsorship',
                        amount: '+ 6,000',
                        date: '03/08/2021',
                        isAdded: true,
                      ),
                      BudgetCard(
                        reason: 'Venue supplies ',
                        amount: '- 650',
                        date: '03/08/2021',
                        isAdded: false,
                      ),
                      
                    ],
                  ),
                ),

              ),
            )
          ],
        ),
      ),

    );
  }
}
