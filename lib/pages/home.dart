import 'package:flutter/material.dart';
import 'package:planzee/tabs/hometab.dart';
import 'package:planzee/widgets/bottomtabs.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController _tabsPageController;
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: Expanded(
          child: PageView(
            controller: _tabsPageController,
            onPageChanged: (num) {
              setState(() {
                _selectedTab = num;
              });
            },
            children: [
              HomeTab(),
              // All bottom navbar option tabs here
              // Searchtab(),
              // Savedtab(),
              // Profiletab(),
            ],
          ),
        )),
        Btmtabs(
          selectedTab: _selectedTab,
          tabPressed: (num) {
            setState(() {
              _tabsPageController.animateToPage(num,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic);
            });
          },
        ),
      ],
    ));
  }
}