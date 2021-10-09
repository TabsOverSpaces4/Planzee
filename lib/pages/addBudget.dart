import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddBudget extends StatefulWidget {
  @override
  _AddBudgetState createState() => _AddBudgetState();
}
class _AddBudgetState extends State<AddBudget> {
  bool _isAddSelected = false;
  bool _isRemoveSelected = false;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    DateTime _selectedDate = DateTime.now();
    TextEditingController _textEditingController = TextEditingController();
    Future openDatePicker() async {
      DateTime picked = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime.now(),
          lastDate: new DateTime.now().add(Duration(days: 1825))
      );
      if (picked != null) {
        _selectedDate = picked;
        _textEditingController
          ..text = DateFormat.yMMMd().format(_selectedDate);
          // ..selection = TextSelection.fromPosition(TextPosition(
          //     offset: _textEditingController.text.length,
          //     affinity: TextAffinity.upstream));
      }
    }
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
            height: deviceHeight * .75,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(height: 30),
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
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: MaterialButton(

                        onPressed: () {
                          setState(() {
                            _isAddSelected = !_isAddSelected;
                          });
                        },
                        color: _isAddSelected ? Colors.green : Colors.white,
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                          shape: CircleBorder(),
                      ),
                       ),
                      Flexible(
                          child:  MaterialButton(
                          onPressed: (){
                            setState(() {
                              _isRemoveSelected = !_isRemoveSelected;
                            });
                          },
                          color: _isRemoveSelected ? Colors.red : Colors.white,
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            shape: CircleBorder(),
                      )
                      ),
                      Flexible(
                          child:TextFormField(
                            decoration: InputDecoration(
                              labelText: "Amount",
                              labelStyle: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20
                              ),
                              hintText: "",
                              hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                              //suffixIcon: Icon(Icons.),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Transaction Date",
                      labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20
                      ),
                      hintText: "",
                      suffixIcon: Icon(Icons.timer),
                    ),
                    controller: _textEditingController,
                    onTap:() {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      openDatePicker();
                    },
                  ),
                  SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/budgettracker');
                    },
                    child: Text(
                        'Submit',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    color:Colors.white ,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
