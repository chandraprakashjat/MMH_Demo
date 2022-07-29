import 'package:flutter/material.dart';

import '../../../route/app_route.dart';
import '../../../theme/app_theme_model.dart';
import '../../../util/constant/string.dart';
import '../../widget/name_titile_widget.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(appThemeModel.paddingXL),
        child: Column(
          children: [
            const Expanded(child: Center(child: NameTitleWidget())),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, signUpRoute),
                child: const Text(openAnAccount)),
            SizedBox(
              height: appThemeModel.marginXL,
            ),
            OutlinedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, loginRoute),
                child: const Text(signIn)),
            SizedBox(
              height: appThemeModel.marginXL,
            ),
          ],
        ),
      ),
    );
  }
}
