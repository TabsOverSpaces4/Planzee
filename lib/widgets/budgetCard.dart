import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  final String reason;
  final String amount;
  final String date;
  final bool isAdded;
  const BudgetCard({this.reason , this.amount, this.date, this.isAdded});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4 , horizontal: 16),
      child: Card(
          color: Color(0xFF5c6bc0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(
                      reason,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(
                      amount,
                      style: TextStyle(
                          color: isAdded ? Colors.green : Colors.red,
                          fontSize: 18
                      ),

                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(
                      date,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              )

            ],
          )
      ),
    );
  }
}
