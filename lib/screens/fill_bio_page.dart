import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/payment_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';
import 'package:food_delivery_app_practice/widgets/textfield_widget.dart';

class FillBioPage extends StatefulWidget {
  const FillBioPage({super.key});
  static const routeName = 'fill_bio_page';

  @override
  State<FillBioPage> createState() => _FillBioPageState();
}

class _FillBioPageState extends State<FillBioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const CustomAppBar(title: 'Fill Your Bio',),

              const TextWidget(
                size: 14, 
                text: 'This data will be displayed in your account profile for security',
                fontWeight: FontWeight.w400,
              ),

              const SizedBox(height: 20,),
              const TextFieldWidget(labelText: 'Enter full name', label: 'Full Name'),
              const SizedBox(height: 10,),
              const TextFieldWidget(labelText: 'Enter nick name', label: 'Nick Name'),
              const SizedBox(height: 10,),
              const TextFieldWidget(labelText: 'Enter phone number', label: 'Phone Number'),
              const SizedBox(height: 10,),
              const TextFieldWidget(labelText: 'Enter gender', label: 'Gender'),
              const SizedBox(height: 10,),
              const TextFieldWidget(labelText: 'Enter date of birth', label: 'Date of Birht'),
              const SizedBox(height: 10,),
              const TextFieldWidget(labelText: 'Enter Address', label: 'Address'),
              
              const SizedBox(height: 20,),
              ButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, PaymentPage.routeName);
                },
                text: 'Next'
              ),
            ],
          ),
        )
      ),
      
    );
  }

  
}