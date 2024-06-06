import 'package:e_app/consts/padding.dart';
import 'package:e_app/views/pages/account/widgets/custom_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../consts/app_data.dart';
import '../../../consts/consts.dart';
import '../../widgets/darkmode.dart';
import '../cources/widgets/custom_heading.dart';
import '../explore/widgets/switch_arrow.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomHeading(
                title: 'Account',
                subTitle: 'Student',
              ),
              Text(
                "Become an Instructor ?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(
            height: spacer - 20,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(70.0),
            ),
            child: Container(
              child: Image.asset(
                assetImg + "user.png",
                fit: BoxFit.contain,
                height: 70,
                color: Theme.of(context).indicatorColor,
                width: 70,
              ),
            ),
          ),
          SizedBox(
            height: spacer - 30,
          ),
          Text(
            "Robert Williams",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: spacer - 40,
          ),
          Text(
            "Edit Profile",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: spacer -10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color Theme",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: spacer -40,
              ),
              Darkmode(),
            ],
          ),
          SizedBox(
            height: spacer -30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vedio Preference",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: AppData.account.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child:  Column(
                      children: [
                        SwitchArrow(
                          isSwitch: AppData.account[index].isswitch,
                          names: AppData.account[index].title,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: spacer -30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Settings",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: AppData.settings.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child:  Column(
                      children: [
                        SwitchArrow(
                          isSwitch: false,
                          names: AppData.settings[index].title,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: spacer -30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Support",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: AppData.support.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child:  Column(
                      children: [
                        SwitchArrow(
                          isSwitch: false,
                          names: AppData.support[index].title,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
                  context: context, builder: (context) => getPopup(context));
            },
            child: CustomButtonBox(title: 'Sign Out'),
          ),
          SizedBox(height: smallSpacer),
          Container(
            alignment: Alignment.center,
            child: Text(
              'V1.0.0',
              style:
              GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: spacer -30),
        ],
      ),
    );
  }
  Widget getPopup(context) {
    return CupertinoActionSheet(
      title: const Text('Are you sure you want to sign out?'),
      cancelButton: CupertinoActionSheetAction(
        child: Text(
          'Cancel',
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {

          },
          child: const Text(
            'Sign Out',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
