import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/common/constants.dart';
import 'package:food_delivery_app_practice/router/app_router.dart';
import 'package:food_delivery_app_practice/screens/demo.dart';
import 'package:food_delivery_app_practice/screens/fill_bio_page.dart';
import 'package:food_delivery_app_practice/screens/forgot_password_page.dart';
import 'package:food_delivery_app_practice/screens/home_page.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import 'package:food_delivery_app_practice/screens/password_changed.dart';
import 'package:food_delivery_app_practice/screens/payment_page.dart';
import 'package:food_delivery_app_practice/screens/profile_uploaded_page.dart';
import 'package:food_delivery_app_practice/screens/reset_password_page.dart';
import 'package:food_delivery_app_practice/screens/select_location_page.dart';
import 'package:food_delivery_app_practice/screens/sigin_page.dart';
import 'package:food_delivery_app_practice/screens/slash_page.dart';
import 'package:food_delivery_app_practice/screens/upload_profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SourceSan Pro',
        primaryColor: primary,
        colorScheme: const ColorScheme.light(
          primary: primary,
          secondary: secondary,
          tertiary: tertiary,
        ),
        scaffoldBackgroundColor:const Color(0xFFF4F6F9),
        appBarTheme: AppBarTheme(
          color: const Color(0xFFF4F6F9),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontFamily: 'SourceSan Pro',
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor
          )
        ),
        iconTheme: const IconThemeData(
          color: natural5,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            shadowColor: Colors.transparent
          )
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color:  Colors.transparent,
        )
      ),
      initialRoute: MainPage.routeName,
      onGenerateRoute: OnRouter.onGenerateRoute ,
    );
  }
}
