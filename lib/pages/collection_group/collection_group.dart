import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/headers.dart';

// todo: refactor
const int bottomNavigationHeight = 60;

class CollectionGroup extends StatelessWidget {
  const CollectionGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/coll_group1.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 18, bottom: 27),
                child: Headline(title: 'New collection'),
              ),
            )),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Headline(title: 'Summer sale', color: primaryRed,)))),
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/coll_group3.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 30),
                          child: Headline(title: 'Black'),
                        ),
                      )),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/coll_group2.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center),
                      ),
                      child: Container(),
                    ),
                    Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Center(
                                child: Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Headline(title: 'Men\'s hats'),
                            ))),
                        Expanded(flex: 1, child: Container())
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: bottomNavigationHeight-10)
      ]),
      bottomNavigationBar: const CustomBottomNavigation(),
      extendBody: true, // very important as noted,);
    );
  }
}
