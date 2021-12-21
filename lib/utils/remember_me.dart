
import 'package:flutter/material.dart';

class buildRemeberMe extends StatefulWidget {

  const buildRemeberMe({Key? key}) : super(key: key);

  @override
  State<buildRemeberMe> createState() => _buildRemeberMeState();
}

class _buildRemeberMeState extends State<buildRemeberMe> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (value){
              setState(() {
                isChecked = value;
              });
            },
          checkColor: Colors.blue,
          fillColor: MaterialStateProperty.all(Colors.white),
        ),
        Text(
          'Remember me',
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
