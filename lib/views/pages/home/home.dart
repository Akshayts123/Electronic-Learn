import 'package:e_app/consts/app_data.dart';
import 'package:e_app/consts/consts.dart';
import 'package:e_app/consts/padding.dart';
import 'package:e_app/views/pages/home/widgets/banner.dart';
import 'package:e_app/views/pages/home/widgets/category_title.dart';
import 'package:e_app/views/pages/home/widgets/featured_cource.dart';
import 'package:e_app/views/pages/home/widgets/lucturer.dart';
import 'package:e_app/views/pages/home/widgets/selected_header.dart';
import 'package:e_app/views/pages/home/widgets/small_widget.dart';
import 'package:e_app/views/widgets/clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/home_controller.dart';
import '../../../models/items.dart';
import '../../widgets/design_box.dart';
import '../../widgets/heading.dart';
import '../../widgets/search.dart';
import '../account/widgets/custom_btn.dart';
import '../dashboard/dashboard.dart';

class Home extends StatelessWidget {
  final HomeController _coffeeController = Get.find();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0.0,
          backgroundColor: context.theme.secondaryHeaderColor,
          brightness: Brightness.dark,
        ),
        preferredSize: Size.fromHeight(0.0),
      ),
      body: getBody(context),
    );
  }

  Widget getBody(context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: BottomClipper(),
                  child: Container(
                    width: size.width,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SelectedHeader(
                        username: "Hi, Akshay!",
                        subtitle: "Lets start learning.",
                        image: "user.png",
                      ),
                      SizedBox(height: spacer - 5),
                      Search(
                        hintField: 'Search',
                      ),
                      SizedBox(height: spacer - 20),
                      DesignBox(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: spacer - 30),
            Banner_uni(
              offer: 'Get 60% Off',
              exclusive: "Exclusive for UI/UX Designing",
            ),
            SizedBox(height: spacer - 30),
            Heading(
              heading: "Featured Cource",
            ),
            SizedBox(height: spacer - 30),
            Container(
              height: size.width * .88,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: FeaturedCource(
                        images: AppData.items[index].images,
                        vedio: AppData.items[index].vedio,
                        about: AppData.items[index].about,
                        name: AppData.items[index].name,
                        price: AppData.items[index].price,
                        index: index),
                  );
                },
              ),
            ),
            SizedBox(height: spacer - 40),
            Heading(
              heading: "Categories",
            ),
            SizedBox(height: spacer - 30),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: size.width * .13,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: appPadding),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: AppData.title.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: CategoryTitle(
                      index: index,
                      title: AppData.title[index].title,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: spacer - 50),
            Container(
              height: size.width * .13,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: appPadding),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: AppData.title2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: CategoryTitle(
                      index: index,
                      title: AppData.title2[index].title,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: spacer - 30),
            Heading(
              heading: "Design Cources",
            ),
            SizedBox(height: spacer - 30),
            Container(
              height: size.width * .88,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: FeaturedCource(
                        images: AppData.items[index].images,
                        vedio: AppData.items[index].vedio,
                        about: AppData.items[index].about,
                        name: AppData.items[index].name,
                        price: AppData.items[index].price,
                        index: index),
                  );
                },
              ),
            ),
            SizedBox(height: spacer - 30),
            Heading(
              heading: "Upcomming Appointment",
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(appPadding),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: List.generate(
                  AppData.lucturer.length,
                  (index) {
                    return Lucturers(
                      texts1: AppData.lucturer[index].texts1,
                      texts2: AppData.lucturer[index].texts2,
                      date: AppData.lucturer[index].texts3,
                      time: AppData.lucturer[index].texts4,
                    );
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.all(appPadding),
                  child: CustomButtonBox(title: 'Urgent Luctures Call')),
            ),
            SizedBox(height: spacer - 40),
            Heading(
              heading: "Popular Now",
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(appPadding),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: List.generate(
                  AppData.smallbanner.length,
                  (index) {
                    return SmallWidgets(
                      image: AppData.smallbanner[index].image,
                      texts: AppData.smallbanner[index].texts1,
                      texts2: AppData.smallbanner[index].texts2,
                      rate: AppData.smallbanner[index].rate,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: spacer - 40),
            Heading(
              heading: "Trending Cources",
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(appPadding),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: List.generate(
                  AppData.smallbanner.length,
                      (index) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      height: size.width / 2.2,
                      width: size.width / 2.3,
                      decoration: BoxDecoration(
                        color: _coffeeController.coloring[index],
                        borderRadius: BorderRadius.circular(17.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(70.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Image.asset(assetImg + "smile.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "Cources",
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(

                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                              
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  height: 1.3,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
