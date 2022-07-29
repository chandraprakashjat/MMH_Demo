import 'package:flutter/material.dart';
import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      initialRoute: '/',
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
