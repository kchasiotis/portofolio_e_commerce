import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../widgets/headers.dart';

class CategoriesMain extends StatelessWidget {
  const CategoriesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const Text('Categories'),
          iconTheme: IconThemeData(
            color: appWhite,
          ),
          titleTextStyle: TextStyle(
            color: appWhite,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          bottom: TabBar(
            labelColor: appWhite,
            unselectedLabelColor: appGray,
            indicatorColor: primaryRed,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            dividerColor: backgroundColor,
            dividerHeight: 3,
            tabs: const <Widget>[
              Tab(
                text: 'Women',
              ),
              Tab(
                text: 'Men',
              ),
              Tab(
                text: 'Kids',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: hotRed,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 28,
                          ),
                          Text('SUMMER SALES', style: headline2TextStyle),
                          Text('Up to 50% off',
                              style: TextStyle(
                                fontSize: 14,
                                color: appWhite,
                              )),
                          SizedBox(
                            height: 23,
                          ),
                        ],
                      )),
                    )),
                Column()
              ]),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
