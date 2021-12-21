import 'package:flutter/material.dart';
import 'package:flutter_design_ep2/screens/register.dart';

class buildOptions extends StatelessWidget {

  final String text1;
  final String text2;
  const buildOptions(this.text1,this.text2,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: themeData.textTheme.headline6,
        ),
        GestureDetector(
          child: Text(
            text2,
            style: themeData.textTheme.headline3,
          ),
          onTap: (){
            if(text2.toString().endsWith('Sign In')){
              Navigator.pop(context);
            }else if( text2.toString().endsWith('Sign Up')){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen()
                )
              );
            }
          },
        ),
      ],
    );
  }
}
