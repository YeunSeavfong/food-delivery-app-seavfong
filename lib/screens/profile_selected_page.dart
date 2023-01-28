import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import 'package:food_delivery_app_practice/screens/profile_uploaded_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';

import '../widgets/text_widget.dart';

class ProfileSelectedPage extends StatefulWidget {
  const ProfileSelectedPage({super.key});
  static const routeName = 'profile_selected_page';

  @override
  State<ProfileSelectedPage> createState() => _ProfileSelectedPageState();
}

class _ProfileSelectedPageState extends State<ProfileSelectedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),

          child: Column(
            children:[
              const CustomAppBar(title: 'Upload Your Photo'),

              const SizedBox(height: 20,),
              const TextWidget(
                size: 14, 
                text: 'This data will be displayed in your account profile for security',
                fontWeight: FontWeight.w400,
              ),
              
              const SizedBox(height: 20,),
              _displayProfile(),


              SizedBox(height: MediaQuery.of(context).size.height*0.18,),
              ButtonWidget(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, ProfileUploadedPage.routeName);
                },
              )
            ],
          ),
        )
      ),
    );
  }

  Column _displayProfile(){
    return Column(
      children: [
        
        Stack(
          children: [

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(60),
                    offset: const Offset(3, 0),
                    blurRadius: 20,
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/image/profile.png'),
                  fit: BoxFit.cover
                )
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.edit_rounded,color: Colors.white,),
              ),
            )
          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height*0.18,)
      ],
    );
  }
}