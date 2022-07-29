import 'package:flutter/material.dart';
import 'package:mmh_demo/models/home_tab/service_pojo.dart';
import 'package:mmh_demo/presentation/widget/card_widget.dart';
import 'package:mmh_demo/presentation/widget/view_pager_widget.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class HomeTabScreen extends StatelessWidget {
  HomeTabScreen({Key? key}) : super(key: key);

  List<ServiceItem> list = [
    ServiceItem(id: 0, title: 'Fund', iconData: Icons.handshake),
    ServiceItem(id: 1, title: 'Send Money', iconData: Icons.send_outlined),
    ServiceItem(id: 2, title: 'Bank Transfer', iconData: Icons.home),
    ServiceItem(id: 3, title: 'Loan Request', iconData: Icons.handshake),
    ServiceItem(id: 4, title: 'Airtime', iconData: Icons.phone_android),
    ServiceItem(id: 5, title: 'Cards', iconData: Icons.credit_card)
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width,
          height: size.height * .3,
          child: Padding(
              child: ViewPagerWidget(),
              padding: EdgeInsets.only(top: activeTheme.paddingXL)),
        ),
        Padding(
          padding: EdgeInsets.all(activeTheme.paddingXL),
          child: Text(
            services,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: activeTheme.paddingXL, right: activeTheme.paddingXL),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: (1 / .6),
                mainAxisSpacing: activeTheme.paddingM,
                crossAxisSpacing: activeTheme.paddingS,
              ),
              itemBuilder: (context, index) {
                return CardWidget(
                  serviceItem: list[index],
                );
              }),
        )
      ],
    );
  }
}
