import 'package:flutter/material.dart';

import 'all_constant.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label});
  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: Theme.of(context).iconTheme.size,
          color: Theme.of(context).iconTheme.color,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
