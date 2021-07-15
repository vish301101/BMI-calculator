import 'package:flutter/material.dart';


class Roundiconbutton extends StatelessWidget {
  @override
  Roundiconbutton({@required this.child,@required this.onpressed});

  final IconData child;
  final Function onpressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      onPressed: onpressed,
      elevation: 12.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5C),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }}