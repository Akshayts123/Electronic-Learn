import 'package:e_app/consts/padding.dart';
import 'package:e_app/views/pages/explore/widgets/button_text.dart';
import 'package:e_app/views/pages/explore/widgets/switch_arrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../consts/app_data.dart';
import '../../widgets/heading.dart';
import '../../widgets/search.dart';
import '../../widgets/search_second.dart';
import '../cources/widgets/custom_heading.dart';

class ExploreSearch extends StatelessWidget {
  const ExploreSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: getBody(context),
    );
  }

  Widget getBody(context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeading(
            title: 'Explore',
            subTitle: 'Seek for your preferences',
          ),
          SizedBox(
            height: spacer - 30,
          ),
          SearchSecond(hintField: 'Search',),
          SizedBox(
            height: spacer - 30,
          ),
          Text(
            "Top Searches",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: spacer - 30,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: List.generate(
              AppData.title2.length,
              (index) {
                return ButtonText(
                  title: AppData.title2[index].title,
                );
              },
            ),
          ),
          SizedBox(
            height: spacer - 30,
          ),
          Text(
            "Categories",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: spacer - 30,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: List.generate(
              AppData.title.length,
              (index) {
                return SwitchArrow(
                  isSwitch: false,
                  names: AppData.title[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
