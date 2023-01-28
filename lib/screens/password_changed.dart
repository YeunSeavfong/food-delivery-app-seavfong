import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/sigin_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});
  static const routeName = 'password_changed';

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/app_bg.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/image/congrate.png', scale: 4,),
                const SizedBox(height: 10,),
                TextWidget(size: 24, text: 'Congrate!',color: Theme.of(context).primaryColor,),
                const SizedBox(height: 30,),
                const TextWidget(size: 16, text: 'Password reset succesfully!',fontWeight: FontWeight.w600,),
                SizedBox(height: MediaQuery.of(context).size.height*0.25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: ButtonWidget(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignInPage.routeName);
                    },
                    text: 'Okay'
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}