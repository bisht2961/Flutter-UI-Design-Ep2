import 'package:flutter/material.dart';

class buildTextField extends StatelessWidget {

  final String hintText;
  final bool obscureText;
  final Icon prefixedIcon;
  final TextInputType inputType;
  const buildTextField(this.hintText,this.obscureText, this.prefixedIcon,this.inputType,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: TextField(
        cursorColor: Colors.white,
        cursorWidth: 2,
        obscureText: obscureText,
        style: themeData.textTheme.headline5,
        keyboardType: inputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xFF5180ff),
          prefixIcon: prefixedIcon,
          hintText: hintText,
          hintStyle: themeData.textTheme.headline6,
        ),
      ),
    );
  }
}
