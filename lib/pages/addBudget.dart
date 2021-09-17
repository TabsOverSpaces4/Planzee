import 'package:flutter/material.dart';


class AddBudget extends StatefulWidget {
  @override
  _AddBudgetState createState() => _AddBudgetState();
}
class _AddBudgetState extends State<AddBudget> {
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
              'Add transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
          Container(
            //height: deviceHeight * .804,
            height: deviceHeight * .8,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: deviceWidth * .1,
                right: deviceWidth * .1,
                top: deviceWidth * .025
               ),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                      labelText: "Transaction Title",
                      labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20
                      ),
                      hintText: "",
                      hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                      //suffixIcon: Icon(Icons.),
                      ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20
                      ),
                      hintText: "",
                      hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                      //suffixIcon: Icon(Icons.),
                    ),
                  )
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
