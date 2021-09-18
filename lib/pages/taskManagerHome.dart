import 'package:flutter/material.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'dart:math' as math;

class taskManager extends StatefulWidget {
  @override
  _taskManagerState createState() => _taskManagerState();
}

class _taskManagerState extends State<taskManager> {
  PageController _tabsPageController;
  @override
  void dispose() {
    _tabsPageController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).accentColor,
        title: Row(
          children: [],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CustomActionBar(
            //   hasBackArrow: true,
            //   title: "Task Manager",),
            Text(
              "Project Name",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search Task...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.teal[400],
                      unselectedLabelColor: Colors.grey[350],
                      labelColor: Theme.of(context).primaryColor,
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Pre-Event",
                        ),
                        Tab(
                          text: "During Event",
                        ),
                        Tab(
                          text: "Post-Event",
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 20.0
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(children: [
                        GestureDetector(
                          //Pre-event tab code
                            child: ExpansionWidget(
                                initiallyExpanded: true,
                                titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
                                  return InkWell(
                                      onTap: () => toogleFunction(animated: true),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Expanded(child: Text('Your tasks')),
                                            Transform.rotate(
                                              angle: math.pi * animationValue / 2,
                                              child: Icon(Icons.arrow_right, size: 40),
                                              alignment: Alignment.center,
                                            )
                                          ],
                                        ),
                                      ));
                                },
                                content: Container(
                                  width: double.infinity,
                                  //color: Colors.grey.shade100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20)
                                    ),
                                    color: Theme.of(context).primaryColor,
                                  ),

                                  padding: EdgeInsets.all(20),
                                  child: Card(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const ListTile(
                                          leading: Icon(Icons.album),
                                          title: Text('Task Title'),
                                          subtitle: Text('Task'),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            RaisedButton(
                                              onPressed: () {},
                                              color: Theme.of(context).primaryColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)),
                                              child: Text("Edit"),
                                              textColor: Colors.white,
                                            ),
                                            const SizedBox(width: 8),
                                            RaisedButton(
                                              onPressed: () {},
                                              color:Theme.of(context).primaryColor,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)),
                                              child: Text("Mark as Done"),
                                              textColor: Colors.white,
                                            ),
                                            const SizedBox(width: 8),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ))





                        ),
                        //During event tab code
                        Container(

                        ),
                        Container(

                        )

                      ],),
                    )

                  ],
                ),
              ),
            )],
        ),
      ),
    );
  }
}
