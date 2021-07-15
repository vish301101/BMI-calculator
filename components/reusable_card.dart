import 'package:flutter/material.dart';


class reusable_card extends StatelessWidget {
  reusable_card({@required this.colour, this.card_child,this.onpress});
  final Color colour;
  final Widget card_child;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: card_child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}