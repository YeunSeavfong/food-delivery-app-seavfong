import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import 'package:food_delivery_app_practice/screens/profile_selected_page.dart';
import 'package:food_delivery_app_practice/screens/profile_uploaded_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';

import '../widgets/text_widget.dart';

class UploadProfilePage extends StatefulWidget {
  const UploadProfilePage({super.key});
  static const routeName = 'upload_profile_page';

  @override
  State<UploadProfilePage> createState() => _UploadProfilePageState();
}

class _UploadProfilePageState extends State<UploadProfilePage> {

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
              _displayChoice(),


              SizedBox(height: MediaQuery.of(context).size.height*0.18,),
              ButtonWidget(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, ProfileSelectedPage.routeName);
                },
              )
            ],
          ),
        )
      ),
    );
  }

  Column _displayChoice(){
    return Column(
      children: [
        _buildPhotoChoice(icon: Icons.camera_alt_rounded, label: 'Take photo'),
        const SizedBox(height: 30,),
        _buildPhotoChoice(icon: Icons.folder_rounded, label: 'From gallery'),
      ],
    );
  }

  GestureDetector _buildPhotoChoice({required IconData icon, required String label}) {
    return GestureDetector(
              onTap: () {},
              
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withAlpha(50),
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withAlpha(60),
                      offset: const Offset(0,5),
                      blurRadius: 10,
                    )
                  ]
                ),
            
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        shape: BoxShape.circle
                      ),
                      child: Icon(icon,color: Theme.of(context).primaryColor,),
                    ),
                    TextWidget(size: 14, text: label),
                  ],
                ),
              ),
            );
  }
}