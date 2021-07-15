import 'package:bmi_calculator/components/calculator_brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/gndr.dart';
import '../components/constants.dart';
import 'output_page.dart';
import '../components/bottombutton.dart';
import '../components/Roundicon.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 130;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusable_card(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kactivecardclr
                        : kinactivecardclr,
                    card_child: Gndr(
                      gendericon: FontAwesomeIcons.mars,
                      gendertext: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: reusable_card(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kactivecardclr
                        : kinactivecardclr,
                    card_child: Gndr(
                      gendericon: FontAwesomeIcons.venus,
                      gendertext: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusable_card(
              colour: kactivecardclr,
              card_child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kgendertextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kcentercontainertext,
                      ),
                      Text(
                        'cm',
                        style: kgendertextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                          //pressedElevation: 5.0,

                        ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 28.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      inactiveColor: Color(0xFF8D8E98),
                      min: 120.0,
                      max: 250.0,
                      onChanged: (double newvalue){
                        setState(() {
                          height=newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

             Expanded(
              child: Row(
                children: [
                 Expanded(
                   child: reusable_card(
                    colour: kactivecardclr,
                    card_child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                            Text(
                              'WEIGHT',
                              style: kgendertextstyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kcentercontainertext,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Roundiconbutton(
                                  onpressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: FontAwesomeIcons.plus,
                                ),

                                SizedBox(
                                  width: 20.0,
                                ),

                                Roundiconbutton(
                                  onpressed: (){
                                   setState(() {
                                     weight--;
                                   });
                                  },
                                  child: FontAwesomeIcons.minus,
                                )
                              ],
                            ),
                          ],

                    ),
                ),
                 ),
                  Expanded(
                    child: reusable_card(
                      colour: kactivecardclr,
                      card_child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kgendertextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kcentercontainertext,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Roundiconbutton(
                                child: FontAwesomeIcons.plus,
                                onpressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }
                              ),

                              SizedBox (
                                width: 20.0,
                              ),
                              Roundiconbutton(
                                child: FontAwesomeIcons.minus,
                                onpressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                        ],
                          ),

],
    ),
                    ),
                  ),
                  ],
              ),

            ),

          Bottombutton(
            buttontitle: 'CALCULATE',
            ontap: (){
              Calculatorbrain cb = Calculatorbrain(height: height,weight: weight);
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Resultspage(
                    calbmi: cb.calculatebmi() ,
                    calinterpretation: cb.getinterpretatiion(),
                    calresult: cb.result(),
                  ),
                ),);
            },
          )
        ],
      ),
    );
  }
}




