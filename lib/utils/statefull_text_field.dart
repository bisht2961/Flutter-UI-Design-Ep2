import 'package:flutter/material.dart';

class buildStatefullButton extends StatefulWidget {

  final String hintText;
  final bool obscureText;
  final Icon prefixedIcon;
  final TextInputType inputType;

  const buildStatefullButton(this.hintText, this.obscureText,this.inputType,this.prefixedIcon,{Key? key  }) : super(key: key);

  @override
  _buildStatefullButtonState createState() => _buildStatefullButtonState();
}

class _buildStatefullButtonState extends State<buildStatefullButton> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Material(
      color: Colors.transparent,
      elevation: 2,
      child: TextField(
        cursorColor: Colors.white,
        cursorWidth: 2,
        obscureText: _obscureText,
        style: themeData.textTheme.headline5,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xFF5180ff),
          prefixIcon: widget.prefixedIcon,
          hintText: widget.hintText,
          hintStyle: themeData.textTheme.headline6,
          suffixIcon: IconButton(
            icon: Icon(_obscureText?Icons.visibility:Icons.visibility_off,color: Colors.white,),
            onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
