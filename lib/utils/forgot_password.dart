import 'package:flutter/material.dart';

class buildForgetPassword extends StatelessWidget {
  const buildForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: (){},
        child: Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
