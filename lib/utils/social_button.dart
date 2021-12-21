import 'package:flutter/material.dart';

class buildSocialButton extends StatelessWidget {
  const buildSocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget _buildLogoBtn({
      required String image,
      required VoidCallback onPressed,
    }){
      return FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.white,
        child: SizedBox(
          height: 30.0,
          child: Image.asset(image),
        ),
      );
    };

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLogoBtn(
              image: 'assets/images/google_logo.png',
              onPressed: (){},
          ),
        _buildLogoBtn(
              image: 'assets/images/apple_logo.png',
              onPressed: (){},
          ),
        _buildLogoBtn(
              image: 'assets/images/facebook_logo.png',
              onPressed: (){},
          ),
      ],
    );
  }
}

