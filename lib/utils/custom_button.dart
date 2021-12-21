import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {

  final String text;
  const buildButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 64,
      width: size.width,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.blue,
          animationDuration: Duration(milliseconds: 1000),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )
        ),
        child: Text(
            text,
          style: TextStyle(
            fontFamily: "Monserrat",
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
