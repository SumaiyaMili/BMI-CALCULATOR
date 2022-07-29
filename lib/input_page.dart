import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/calculator.dart';
import 'package:flutter_bmi_calculator/result_page.dart';
import 'package:flutter_bmi_calculator/reusable/all_constant.dart';
import 'package:flutter_bmi_calculator/reusable/bottom_button.dart';
import 'package:flutter_bmi_calculator/reusable/icon_content.dart';
import 'package:flutter_bmi_calculator/reusable/reusable_card.dart';
import 'package:flutter_bmi_calculator/reusable/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardStaticElement: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardStaticElement: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                    cardStaticElement: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(),
                                  style: Theme.of(context).textTheme.headline2),
                              Text(
                                "cm",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ]),
                        Slider(
                          value: height.toDouble(),
                          min: sliderMinValue,
                          max: sliderMaxValue,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: inactiveCardColor,
                      cardStaticElement: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            weight.toString(),
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,

                                //child: ,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,

                                //child: ,
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: inactiveCardColor,
                      cardStaticElement: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            age.toString(),
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,

                                //child: ,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,

                                //child: ,
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                Calculator cal = Calculator(weight: weight, height: height);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiResult: cal.calculateBMI(),
                              resultText: cal.getResult(),
                              interpretation: cal.getInterpretation(),
                            )));
              },
              child: Container(
                child: BottomButton(buttonText: "CALCULATOR"),
              ))
        ]));
  }
}
