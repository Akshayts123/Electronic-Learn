import 'package:e_app/consts/padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dashboard/dashboard.dart';

class OnboardScreenLive extends StatefulWidget {
  const OnboardScreenLive({Key? key}) : super(key: key);

  @override
  State<OnboardScreenLive> createState() => _OnboardScreenLiveState();
}

class _OnboardScreenLiveState extends State<OnboardScreenLive> {
  late PageController _pageController;
  int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnLiveBoard(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  demo_data.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: DotIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: TextButton(

                    onPressed: () {
                      if(_pageIndex == 3){
                        Get.to(Dashboard());
                      }
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    style: ElevatedButton.styleFrom(shape: CircleBorder(),),
                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 15 : 6,
      width: 6,
      decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class OnBoardContent {
  final String image, title, description;
  OnBoardContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoardContent> demo_data = [
  OnBoardContent(
      image: "assets/images/vect1.jpg",
      title: "Course materials",
      description: "This includes all the resources needed to complete a course, such as textbooks, lecture notes, videos. "),
  OnBoardContent(
      image: "assets/images/vect2.jpg",
      title: "Assessments",
      description: "These are the quizzes, tests, exams, and other forms of evaluation that measure the progress of learners."),
  OnBoardContent(
      image: "assets/images/vect3.jpg",
      title: "Communication tools",
      description: "These are the tools that enable communication between learners, instructors, and other participants."),
  OnBoardContent(
      image: "assets/images/vect4.jpg",
      title: "Progress tracking",
      description: " The LMS typically includes features that enable learners to track their progress throughout a course."),
];

class OnLiveBoard extends StatelessWidget {
  final String image, title, description;
  const OnLiveBoard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              image,
              height: 350,
            ),
            SizedBox(
              height: spacer - 40,
            ),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              description,
              textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
            )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
