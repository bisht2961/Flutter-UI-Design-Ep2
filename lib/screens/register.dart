import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_ep2/utils/bottom_suggestion.dart';
import 'package:flutter_design_ep2/utils/custom_button.dart';
import 'package:flutter_design_ep2/utils/statefull_text_field.dart';
import 'package:flutter_design_ep2/utils/text_field.dart';
import 'package:flutter_design_ep2/utils/widget_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF5967ff),
                Color(0xFF5374ff),
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(top: 25.0),
              child: Column(
                children: [
                  Text(
                    'Sign Up',
                    style: themeData.textTheme.headline1,
                  ),
                  addVerticalSpace(30.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Full Name',
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildTextField(
                    'Enter your Name',
                    false,
                    Icon(Icons.person,color: Colors.white,),
                    TextInputType.text,
                  ),
                  addVerticalSpace(20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone No',
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildTextField(
                    'Enter your Phone No',
                    false,
                    Icon(Icons.phone,color: Colors.white),
                    TextInputType.number,
                  ),
                  addVerticalSpace(20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildTextField(
                    'Enter your Email',
                    false,
                    Icon(Icons.mail,color: Colors.white),
                    TextInputType.text,
                  ),
                  addVerticalSpace(20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildStatefullButton(
                    'Enter your Password',
                    true,
                    TextInputType.text,
                    Icon(Icons.vpn_key,color: Colors.white),
                  ),
                  addVerticalSpace(20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirm Password',
                      style: themeData.textTheme.headline6,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildStatefullButton(
                    'Confirm Password',
                    true,
                    TextInputType.text,
                    Icon(Icons.vpn_key,color: Colors.white),
                  ),
                  addVerticalSpace(40.0),
                  const buildButton(
                    'Sign Up',
                  ),
                  addVerticalSpace(20.0),
                  const buildOptions(
                    'Already Have an Account? ',
                    'Sign In',
                  ),
                  addVerticalSpace(20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
