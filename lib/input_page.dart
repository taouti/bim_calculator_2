import 'package:bim_calculator_2/widgets/reusable_card.dart';
import 'package:bim_calculator_2/widgets/reusable_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleCardColor = inactiveCardColor;
  //Color femaleCardColor = inactiveCardColor;
  Gender _selectedGender;
  int height = 180;
/*
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        //femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    } else if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        //maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTouch: () {
                      setState(() {
                        //updateColor(Gender.male);
                        _selectedGender = Gender.male;
                      });
                    },
                    color: (_selectedGender == Gender.male)
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: ReusableIcon(
                      icon: FontAwesomeIcons.mars,
                      iconLabel: 'MALE',
                      iconSize: 80.0,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTouch: () {
                      setState(() {
                        //updateColor(Gender.female);
                        _selectedGender = Gender.female;
                      });
                    },
                    color: (_selectedGender == Gender.female)
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: ReusableIcon(
                      icon: FontAwesomeIcons.venus,
                      iconSize: 80.0,
                      iconLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: KLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: KLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor: KSliderInactiveColor,
                      thumbColor: KSliderThumbColor,
                      overlayColor: KSliderOverlayColor,
                      activeTrackColor: KSliderActiveColor,
                      overlayShape:
                          RoundSliderThumbShape(enabledThumbRadius: 20.0),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: KMin,
                      max: KMax,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: KActiveCardColor)),
                Expanded(child: ReusableCard(color: KActiveCardColor)),
              ],
            ),
          ),
          Container(
            height: KBottomContainerHeight,
            color: KBottomContainerColor,
          ),
        ],
      ),
    );
  }
}
