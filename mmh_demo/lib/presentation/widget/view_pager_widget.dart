import 'package:flutter/material.dart';
import 'package:mmh_demo/models/home_tab/card_pojo.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class ViewPagerWidget extends StatelessWidget {
  final list = <CardItem>[
    CardItem(
        title: 'Wallet',
        fund: '540,4657.45',
        currency: '\$',
        forWalletType: true),
    CardItem(
        title: 'Loan',
        fund: '540,293.45',
        currency: '\$',
        forWalletType: false),
    CardItem(
        title: 'Investment Account',
        fund: '540,294.45',
        currency: '\$',
        forWalletType: false)
  ];
  ViewPagerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: PageController(
          viewportFraction: 0.90,
          initialPage: 0,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: index == 0
                ? Colors.redAccent[700]
                : index == 1
                    ? Colors.yellow[800]
                    : Colors.indigo,
            child: Padding(
              padding: EdgeInsets.all(activeTheme.paddingL),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index].title,
                    style: activeTheme.body1
                        .copyWith(color: activeTheme.whiteColor),
                  ),
                  SizedBox(
                    height: activeTheme.marginS,
                  ),
                  textChiled('${list[index].currency} ${list[index].fund}'),
                  SizedBox(
                    height: activeTheme.marginXXL,
                  ),
                  SizedBox(
                    width: 140,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          primary: Colors.yellow, // background
                          onPrimary: Colors.white,
                          side: const BorderSide(
                            width: 0.0,
                            color: Colors.yellow,
                          ) // foreground
                          ),
                      onPressed: () => ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                              content: Text('Work In Progress'))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(list[index].forWalletType
                              ? withdrawFund
                              : viewDetails),
                          SizedBox(
                            width: activeTheme.marginS,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: activeTheme.whiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget textChiled(String text) {
    var list = text.split('.');

    if (list.length <= 1) {
      list.add('00');
    }
    return RichText(
        text: TextSpan(
            text: list[0],
            style: appThemeData.textTheme.headline4
                ?.copyWith(color: activeTheme.whiteColor),
            children: [
          TextSpan(
              text: '.${list[1]}',
              style: appThemeData.textTheme.bodyText2
                  ?.copyWith(color: activeTheme.whiteColor))
        ]));
  }
}
