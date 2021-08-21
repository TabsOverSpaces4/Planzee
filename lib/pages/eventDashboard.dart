import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planzee/widgets/bottomtabs.dart';
import 'package:planzee/tabs/hometab.dart';




class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController _tabsPageController;
  int _selectedTab = 0;


  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            child: Text(
              'Dashboard',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
            ),
          ),
          Container(
            height: deviceHeight * .75,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)

              ),
            ),

            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  height: deviceHeight * .11,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text(
                        "Event Details",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black
                        ),
                      ),
                    ),

                  ),

                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  height: deviceHeight * .11,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text(
                        "Task Assignment",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  height: deviceHeight * .11,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text(
                        "Attendance",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  height: deviceHeight * .11,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text(
                        "Certificate Generator",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/budgettracker');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    height: deviceHeight * .11,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text(
                          "Budget Tracker",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  height: deviceHeight * .11,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text(
                        "Itenerary",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

          ),


        ],
      ),
    );












    // return Scaffold(
    //   backgroundColor: Theme.of(context).accentColor,
    //     body:Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Container(
    //             child: Expanded(
    //               child: PageView(
    //                 controller: _tabsPageController,
    //                 onPageChanged: (num) {
    //                   setState(() {
    //                     _selectedTab = num;
    //                   });
    //                 },
    //                 children: [
    //                   HomeTab(),
    //                   // Searchtab(),
    //                   // Savedtab(),
    //                   // Profiletab(),
    //                 ],
    //               ),
    //             )),
    //
    //         // Btmtabs(
    //         //   selectedTab: _selectedTab,
    //         //   tabPressed: (num) {
    //         //     setState(() {
    //         //       _tabsPageController.animateToPage(num,
    //         //           duration: Duration(milliseconds: 300),
    //         //           curve: Curves.easeOutCubic);
    //         //     });
    //         //   },
    //         // ),
    //
    //       ],
    //     )
    //
    // );
  }
}

