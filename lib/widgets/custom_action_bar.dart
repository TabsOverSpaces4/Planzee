import 'package:flutter/material.dart';
import 'package:planzee/pages/about.dart';


class CustomActionBar extends StatelessWidget {
  final String title;
  final bool hasBackArrow;
  final bool hasTitle;
  final bool hasBackground;
  CustomActionBar({
    this.title,
    this.hasBackArrow,
    this.hasTitle,
    this.hasBackground,
  });

  @override
  Widget build(BuildContext context) {
    bool _hasBackArrow = hasBackArrow ?? false;
    bool _hasTitle = hasTitle ?? true;
    bool _hasBackground = hasBackground ?? true;

    return Container(
      decoration: BoxDecoration(
          gradient: _hasBackground
              ? LinearGradient(
                  colors: [Color(0xFFE9F2F2), Color(0xFFE9F2F2)],
                  begin: Alignment(0, 0),
                  end: Alignment(0, 1))
              : null),
      padding: EdgeInsets.only(
        top: 25.0,
        bottom: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_hasBackArrow)
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(8.0)),
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("lib/Assets/images/back_arrow.png"),
                  color: Colors.black,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          if (_hasTitle)
            Text(
              title ?? "Action Bar Title",
              
            ),
          GestureDetector(
            onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => About(),
                      ));
                },
                      child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0)),
                alignment: Alignment.center,
                child: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
