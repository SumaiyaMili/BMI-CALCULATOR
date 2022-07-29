import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input_page.dart';
import 'package:flutter_bmi_calculator/reusable/all_constant.dart';
import 'package:flutter_bmi_calculator/reusable/bottom_button.dart';
import 'package:flutter_bmi_calculator/reusable/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColor,
                cardStaticElement: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      bmiResult,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      interpretation,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: BottomButton(buttonText: "RE-CALCULATE"),
              ))
        ],
      ),
    );
  }
}
