
import 'package:e_app/controller/home_controller.dart';
import 'package:e_app/views/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../account/account_page.dart';
import '../cources/cources.dart';
import '../explore/explore_search.dart';
import '../introduction/intro.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: Scaffold(
        body: getBody(),
        bottomNavigationBar: getFooter(),
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Home(),
      MyCoursesPage(),
      ExploreSearch(),
      Account(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    List bottomItems = [
      "assets/images/home_icon.svg",
      "assets/images/play_icon.svg",
      "assets/images/search_icon.svg",
      "assets/images/user_icon.svg",
    ];
    return Container(
      width: size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 30.0,
            offset: Offset(0, -10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomItems.length,
              (index) {
                return InkWell(
                  onTap: () {
                    selectedTab(index);
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        bottomItems[index],
                        height: 17.5,
                        color: pageIndex == index
                            ? context.theme.primaryColor
                            : Colors.grey,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      (pageIndex == index)
                          ? AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                              child: Container(
                                height: 5.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                    color: context.theme.primaryColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            )
                          : Container(
                              height: 5.0,
                              width: 20.0,
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
