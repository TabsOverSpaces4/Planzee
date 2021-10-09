import 'package:flutter/material.dart';

class BudgetDetail extends StatefulWidget {
  String budgetTitle;
  BudgetDetail({Key key, @required this.budgetTitle }) : super(key: key);
  @override
  _BudgetDetailState createState() => _BudgetDetailState(budgetTitle);
}

class _BudgetDetailState extends State<BudgetDetail> {
  String budgetTitle;
  _BudgetDetailState(this.budgetTitle);
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            child: Text(
              budgetTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
          Container(
            //height: deviceHeight * .804,
              height: deviceHeight * .75,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:40),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          '+ 12,000',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 16
                          ),
                        ),
                      ),
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Amount',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,right: 10,left: 10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          'Received sponsorship from XYZ company',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,right: 10,left: 10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          '11/08/2021',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
                    child: MaterialButton(
                      height: deviceHeight * .075,
                      onPressed: (){
                        Navigator.pushNamed(context, '/editBudget');
                      },
                      child: Icon(Icons.edit , size: 30, color: Colors.white),
                      color: Theme.of(context).primaryColor,
                      shape: CircleBorder(),

                    ),
                  )

                ],
              )
          ),
        ],
      ),
    );
  }
}
