import 'package:flutter/material.dart';

import 'package:mmh_demo/util/constant/string.dart';

var _customBottomBarItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), label: home),
  BottomNavigationBarItem(icon: Icon(Icons.money_rounded), label: investment),
  BottomNavigationBarItem(icon: Icon(Icons.payment), label: payment),
  BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: credit),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: profile),
];

class BottomNevigationWidget extends StatelessWidget {
  const BottomNevigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5.0,
      currentIndex: 0,
      items: _customBottomBarItems,
      onTap: (int) {
        print('Current index value $int');
      },
    );
  }
}
