import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_ep2/utils/forgot_password.dart';
import 'package:flutter_design_ep2/utils/custom_button.dart';
import 'package:flutter_design_ep2/utils/remember_me.dart';
import 'package:flutter_design_ep2/utils/bottom_suggestion.dart';
import 'package:flutter_design_ep2/utils/social_button.dart';
import 'package:flutter_design_ep2/utils/statefull_text_field.dart';
import 'package:flutter_design_ep2/utils/text_field.dart';
import 'package:flutter_design_ep2/utils/widget_functions.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF5967ff),
                  Color(0xFF5374ff),
                  Color(0xFF5180ff),
                  Color(0xFF538bff),
                  Color(0xFF5995ff),
                ],
              )
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ).copyWith(top: 40),
              child: Column(
                children: [
                  Text(
                    'Sign In',
                    style: themeData.textTheme.headline1,
                  ),
                  addVerticalSpace(25.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: themeData.textTheme.headline5,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildTextField(
                    'Enter your Email',
                    false,
                    Icon(Icons.mail,color: Colors.white),
                    TextInputType.text,
                  ),
                  addVerticalSpace(25.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: themeData.textTheme.headline5,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  const buildStatefullButton(
                    'Enter your Password',
                    true,
                    TextInputType.text,
                    Icon(Icons.vpn_key,color: Colors.white,),
                  ),
                  addVerticalSpace(10.0),
                  const buildForgetPassword(),
                  const buildRemeberMe(),
                  addVerticalSpace(20.0),
                  const buildButton(
                    'Login'
                  ),
                  addVerticalSpace(20.0),
                  Text(
                    '- OR -',
                    style: themeData.textTheme.headline5,
                  ),
                  addVerticalSpace(15.0),
                  Text(
                    'Sign in with',
                    style: themeData.textTheme.headline5,
                  ),
                  addVerticalSpace(25.0),
                  const buildSocialButton(),
                  addVerticalSpace(20.0),
                  const buildOptions(
                    'Don\'t have an Account? ',
                    'Sign Up',
                  ),
                  addVerticalSpace(30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}