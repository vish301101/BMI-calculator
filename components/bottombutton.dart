import 'package:flutter/material.dart';
import 'constants.dart';
import '../screens/output_page.dart';

class Bottombutton extends StatelessWidget {

  Bottombutton({@required this.ontap,@required this.buttontitle});

  final String buttontitle;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
        ontap,
      child: Container(
        child: Center(

          child: Text(
          buttontitle,
            style: klargebuttontextsyle,),
        ),padding: EdgeInsets.only(bottom: 00.0),
        color: kbottomcardclr,
        height: kbottomcontainerheight,
        width: double.infinity,
      ),
    );
  }
}
