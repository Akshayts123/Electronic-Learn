
import 'package:e_app/utils/app_pages.dart';
import 'package:e_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      title: 'E Learning App',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.routes,
      initialRoute: Routes.SPLASH,
    );
  }
}