import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/demo.dart';
import 'package:food_delivery_app_practice/screens/sigin_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});
  static const routeName = 'get_started_page';

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/get_started_bg.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              child: Column(
                children: [
                  Text(
                    'Foode', 
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    'The best food ordering and delivery app of the century',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ButtonWidget(
                      text: 'Next', 
                      onPressed: () {Navigator.pushNamed(context, SignInPage.routeName);},
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}