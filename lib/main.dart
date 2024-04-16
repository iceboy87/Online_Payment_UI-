import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Addision/DTH.dart';
import 'Addision/Electricity pay.dart';
import 'Login.dart';
import 'Profile/Settings.dart';
import 'Profile/profile.dart';
import 'home_a/Upi Page.dart';
import 'home_a/a_c.dart';
import 'home_a/mobile_recharge.dart';
import 'home_page/Navication.dart';
import 'home_page/home page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      builder: (context, child) {
        child = ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(700, name: TABLET),
            const ResponsiveBreakpoint.autoScale(700, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
          ],
        );
        return child;
      },
      title: 'GT Chat App',
        // theme: ThemeData.light(),
        // darkTheme: ThemeData.dark(),
        // themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(

      splashIconSize: 300,
      duration: 2500,
          splash: Image.asset("assets/IZet.png",
          height: 300,
          width: 300,
          fit: BoxFit.fill,),
          nextScreen: login()));
      //home:const WhatsappProfilePage()

  }
}

