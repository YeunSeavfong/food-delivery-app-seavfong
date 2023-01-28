import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/get_started_page.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({super.key});

  static const routeName = '/';

  @override
  State<SlashPage> createState() => _SlashPageState();
}

class _SlashPageState extends State<SlashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3), 
      (() => Navigator.pushNamed(context, GetStartedPage.routeName))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset('assets/image/bg_splash_page.png'),
            Positioned(
              bottom: 150,
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )
            )
          ],
        ),
      ),
    );
  }
}