import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Custombtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineBtn;
  final bool isLoading;
  Custombtn({this.text, this.onPressed, this.outlineBtn, this.isLoading});

  @override
  Widget build(BuildContext context) {
    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55.0,
        decoration: BoxDecoration(
            color: _outlineBtn ? Colors.transparent : Theme.of(context).primaryColor,
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0)),
        margin: EdgeInsets.symmetric(
          horizontal: 80.0,
          vertical: 8.0,
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
                          child: Center(
                            child: Text(
                              text ?? "button's label",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: _outlineBtn ? Theme.of(context).primaryColor : Colors.white,
                                fontWeight: FontWeight.w600,

                              ),
                              textAlign: TextAlign.center,
                            ),
              ),
            ),
            Visibility(
              visible: _isLoading,
                          child: Center(
                            child: SizedBox(
                                height: 30.0,
                                width: 30.0,
                                child: CircularProgressIndicator()
                            ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
