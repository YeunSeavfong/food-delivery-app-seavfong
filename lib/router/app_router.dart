import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/call_drop_page1.dart';
import 'package:food_delivery_app_practice/screens/chat_body_page.dart';
import 'package:food_delivery_app_practice/screens/chat_call.dart';
import 'package:food_delivery_app_practice/screens/demo.dart';
import 'package:food_delivery_app_practice/screens/fill_bio_page.dart';
import 'package:food_delivery_app_practice/screens/filter_search_page.dart';
import 'package:food_delivery_app_practice/screens/forgot_password_page.dart';
import 'package:food_delivery_app_practice/screens/get_started_page.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import 'package:food_delivery_app_practice/screens/password_changed.dart';
import 'package:food_delivery_app_practice/screens/payment_page.dart';
import 'package:food_delivery_app_practice/screens/popular_menu_page.dart';
import 'package:food_delivery_app_practice/screens/popular_restaurant_page.dart';
import 'package:food_delivery_app_practice/screens/profile_selected_page.dart';
import 'package:food_delivery_app_practice/screens/profile_uploaded_page.dart';
import 'package:food_delivery_app_practice/screens/promote_page.dart';
import 'package:food_delivery_app_practice/screens/reset_password_page.dart';
import 'package:food_delivery_app_practice/screens/search_result_page.dart';
import 'package:food_delivery_app_practice/screens/select_location_page.dart';
import 'package:food_delivery_app_practice/screens/sigin_page.dart';
import 'package:food_delivery_app_practice/screens/sign_up_page.dart';
import 'package:food_delivery_app_practice/screens/slash_page.dart';
import 'package:food_delivery_app_practice/screens/upload_profile_page.dart';
import 'package:food_delivery_app_practice/screens/verify_code_page.dart';

import '../screens/call_drop_page2.dart';
import '../screens/call_drop_page3.dart';

class OnRouter{
  static Route<RouteSettings> onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case SlashPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const SlashPage())
        );
      case GetStartedPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const GetStartedPage())
        );
      case SignInPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const SignInPage())
        );
      case SignUpPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const SignUpPage())
        );
      case FillBioPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const FillBioPage())
        );
      case PaymentPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const PaymentPage())
        );
      case UploadProfilePage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const UploadProfilePage())
        );
      case PasswordChanged.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const PasswordChanged())
        );
      case ProfileUploadedPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const ProfileUploadedPage())
        );
      case ForgotPasswordPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const ForgotPasswordPage())
        );
      case VerifyCodePage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const VerifyCodePage())
        );
      case ResetPasswordPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const ResetPasswordPage())
        );
      case ProfileSelectedPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const ProfileSelectedPage())
        );
      case PopularRestaurantPage.routeName:
        return MaterialPageRoute( 
          builder: ((context) => const PopularRestaurantPage())
        );
      case PopularMenuPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const PopularMenuPage()),
        );
      case MainPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const MainPage())
        );
      case SelectLocationPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const SelectLocationPage()),
        );
      case FilterSearchPage.routeName:
        return MaterialPageRoute(
          builder:((context) => const FilterSearchPage())
        );
      case SearchResultPage.routeName:
        return MaterialPageRoute(
          builder:((context) => const SearchResultPage())
        );
      case PopularListPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const PopularListPage())
        );
      case ChatBodyPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const ChatBodyPage())
        );
      case ChatCallPage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const ChatCallPage())
        );
      case CallDropedPage1.routeName:
        return MaterialPageRoute(
          builder: ((context) => const CallDropedPage1())
        );
      case CallDropedPage2.routeName:
        return MaterialPageRoute(
          builder: ((context) => const CallDropedPage2())
        );
      case CallDropedPage3.routeName:
        return MaterialPageRoute(
          builder: ((context) => const CallDropedPage3())
        );
      case PromotePage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const PromotePage())
        );
      default:
        return MaterialPageRoute(
          builder: ((context) => const Center(
            child: Text('No page to display!'),
          ))
        );
    }
  }
}