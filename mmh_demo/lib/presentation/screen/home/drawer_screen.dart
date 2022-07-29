import 'package:flutter/material.dart';
import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/util/constant/string.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 100,
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(logout),
              onTap: () => Navigator.popAndPushNamed(context, loginRoute),
            )
          ],
        ),
      ),
    );
  }
}
