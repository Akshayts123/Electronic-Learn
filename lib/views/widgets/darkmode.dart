import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Darkmode extends StatefulWidget {
  const Darkmode({Key? key}) : super(key: key);

  @override
  State<Darkmode> createState() => _DarkmodeState();
}

RxBool _isLightTheme = false.obs;

class _DarkmodeState extends State<Darkmode> {
  @override
  void initState() {
    super.initState();
    getThemeStatus();
  }

  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _isLightTheme.value ? 'Light Mode' : 'Light Mode',
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),


          ],
        ),
      ),
    );
  }
}

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

_saveThemeStatus() async {
  SharedPreferences pref = await _prefs;
  pref.setBool('theme', _isLightTheme.value);
}

getThemeStatus() async {
  var _isLight = _prefs.then((SharedPreferences prefs) {
    return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
  }).obs;
  _isLightTheme.value = (await _isLight.value)!;
  Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
}
