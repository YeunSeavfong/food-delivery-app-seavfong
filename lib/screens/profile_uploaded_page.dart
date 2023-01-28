import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class ProfileUploadedPage extends StatefulWidget {
  const ProfileUploadedPage({super.key});
  static const routeName = 'profile_uploaded_page';

  @override
  State<ProfileUploadedPage> createState() => _ProfileUploadedPageState();
}

class _ProfileUploadedPageState extends State<ProfileUploadedPage> {
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
                const TextWidget(size: 16, text: 'Your profile is already used!',fontWeight: FontWeight.w600,),
                SizedBox(height: MediaQuery.of(context).size.height*0.25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: ButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                    text: 'Go to homePage'
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