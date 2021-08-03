import 'package:flutter/material.dart';

class CustomInpt extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final bool isPasswordField;
  CustomInpt(
      {this.hintText,
      this.onChanged,
      this.onSubmitted,
      this.focusNode,
      this.textInputAction,
      this.isPasswordField});

  @override
  Widget build(BuildContext context) {
    bool _isPasswordField = isPasswordField ?? false;

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(
        horizontal: 48.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: TextField(
        obscureText: _isPasswordField,
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText ?? "hint text",
            hintStyle: TextStyle(color: Theme.of(context).primaryColor),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 12.0,
            )),
        
      ),
    );
  }
}
