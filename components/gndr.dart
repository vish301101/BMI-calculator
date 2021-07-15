import 'package:flutter/material.dart';
import 'constants.dart';

class Gndr extends StatelessWidget {
  Gndr({@required this.gendericon, this.gendertext});
  final IconData gendericon;
  final String gendertext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gendericon,
          //FontAwesomeIcons.gendericon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gendertext,
          style: kgendertextstyle,
        )
      ],
    );
  }
}

