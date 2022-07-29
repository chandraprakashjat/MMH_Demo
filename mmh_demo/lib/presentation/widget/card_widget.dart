import 'package:flutter/material.dart';
import 'package:mmh_demo/models/home_tab/service_pojo.dart';
import 'package:mmh_demo/theme/theme.dart';

class CardWidget extends StatelessWidget {
  final ServiceItem serviceItem;
  const CardWidget({Key? key, required this.serviceItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            serviceItem.iconData,
            color: activeTheme.primaryAccentColor,
            size: activeTheme.sizeUnitXXL,
          ),
          SizedBox(
            height: activeTheme.sizeUnitS,
          ),
          Text(
            serviceItem.title,
            style:
                activeTheme.subTitle1.copyWith(color: activeTheme.neutralColor),
          )
        ],
      ),
    );
  }
}
