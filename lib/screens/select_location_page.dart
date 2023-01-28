import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({super.key});
  static const routeName = 'select_location_page';

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 16),
          
          child: Column(
            children: [
              const CustomAppBar(title: 'Select Your Location'),
            
              const SizedBox(height: 20,),
              const TextWidget(
                size: 14, 
                text: 'This data will be displayed in your account profile for security',
                fontWeight: FontWeight.w400,
              ),
            
              const SizedBox(height: 20,),
              Container(
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.withAlpha(60)),
                  boxShadow: const[
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.grey,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.location_on_rounded,color: Theme.of(context).primaryColor,)
                    ),
                    const TextWidget(size: 14, text: 'Set location'),
                  ],
                ),
              ),
              
              SizedBox(height: MediaQuery.of(context).size.height*0.44),
              ButtonWidget(
                text: 'Next',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}