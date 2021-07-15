import 'file:///C:/Users/vp301/Documents/bmi-calculator-flutter/lib/components/constants.dart';
import 'file:///C:/Users/vp301/Documents/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottombutton.dart';


class Resultspage extends StatelessWidget {

  Resultspage({@required this.calbmi,@required this.calinterpretation,@required this.calresult});

  final String calbmi;
  final String calresult;
  final String calinterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text('YOUR RESULT',
              style: ktitletextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: reusable_card(
                colour: kactivecardclr,
                card_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(calresult,style:
                      kresultbmistyle,
                    ),

                    Text(
                      calbmi,style: kbmitext,
                    ),

                    Text(calinterpretation,
                    style: kbmidescription,
                      textAlign: TextAlign.center,
                    ),

                  ],

                  ),

              )
          ),
          Bottombutton(
            buttontitle: 'RE CALCULATE',
            ontap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
