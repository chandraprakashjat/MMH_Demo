import 'package:flutter/material.dart';
import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class AccountSuccessScreen extends StatelessWidget {
  const AccountSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            Theme.of(context).iconTheme.copyWith(size: activeTheme.sizeUnitXXL),
      ),
      body: Padding(
        padding: EdgeInsets.all(activeTheme.paddingXL),
        child: Column(
          children: [
            Text(
              accountCreated,
              style: activeTheme.heading4,
            ),
            SizedBox(
              height: activeTheme.marginL,
            ),
            Text(
              cong,
              style: activeTheme.subTitle2,
            ),
            SizedBox(
              height: activeTheme.marginM,
            ),
            Text(
              plzClick,
              style: activeTheme.subTitle2,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: activeTheme.marginXXXL,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, homeRoute),
                child: const Text(cont)),
          ],
        ),
      ),
    );
  }
}
