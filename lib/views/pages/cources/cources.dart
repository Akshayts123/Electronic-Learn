import 'package:e_app/views/pages/cources/widgets/custom_heading.dart';
import 'package:flutter/material.dart';

import '../../../consts/app_data.dart';
import '../../../consts/padding.dart';
import 'custom_card.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  _MyCoursesPageState createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.transparent,
      // ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          SizedBox(height: spacer - 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomHeading(
                title: 'My Courses',
                subTitle: 'Let\'s continue, shall we?',
              ),
              Text(
                "5" + ' Courses',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                margin: EdgeInsets.only(bottom: 15),
                child: CustomMyCoursesCard(
                  image: AppData.items[index].images,
                  title: AppData.items[index].about,
                  instructor: AppData.items[index].name,
                  videoAmount: AppData.instructor[index].videoAmount,
                  percentage: AppData.instructor[index].percentage,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
