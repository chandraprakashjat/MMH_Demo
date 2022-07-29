import 'package:flutter/material.dart';
import 'package:mmh_demo/presentation/screen/home/home_tab/home_tab_screen.dart';

import 'bottom_nevigation.dart';
import 'drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
          title: const Text('Hi Prakash Chandra'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => _key.currentState!.openDrawer(),
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ))
          ]),
      drawer: const DrawerScreen(),
      bottomNavigationBar: const BottomNevigationWidget(),
      body: _page(currentIndex),
    );
  }

  _page(int index) {
    switch (index) {
      case 0:
        return HomeTabScreen();
    }
  }
}
