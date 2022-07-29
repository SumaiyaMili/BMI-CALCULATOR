import 'package:flutter/material.dart';
import 'all_constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText});
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(buttonText!, style: Theme.of(context).textTheme.button),
      ),
      color: bottomContainerColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: bottomContainerHeight,
    );
  }
}
