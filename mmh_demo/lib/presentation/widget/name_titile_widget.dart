import 'package:flutter/material.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class NameTitleWidget extends StatelessWidget {
  const NameTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: global,
            style: appThemeData.textTheme.headline1,
            children: [
          TextSpan(
              text: finance.toUpperCase(),
              style: appThemeData.textTheme.headline2)
        ]));
  }
}
