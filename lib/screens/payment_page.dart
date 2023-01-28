import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/upload_profile_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';

import '../widgets/text_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  static const routeName= 'payment_page';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  int selectedIndext = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children:[
              const CustomAppBar(title: 'Payment Method'),

              const SizedBox(height: 20,),
              const TextWidget(
                size: 14, 
                text: 'This data will be displayed in your account profile for security',
                fontWeight: FontWeight.w400,
              ),

              const SizedBox(height: 50,),
              _buildPaymentChoice(imgPath: 'Frame',index: 0, scale: 3),
              _buildPaymentChoice(imgPath: 'Frame_1',index: 1),
              _buildPaymentChoice(imgPath: 'Frame_2',index: 2, scale: 3),
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              ButtonWidget(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, UploadProfilePage.routeName);
                },
              )
            ],
          ),
        ),
    ),
    );
  }

  GestureDetector _buildPaymentChoice({required String imgPath,double? scale, required int index}) {
    return GestureDetector(
              child: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom:16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color:selectedIndext == index? 
                            Theme.of(context).primaryColor.withOpacity(0.7) 
                         : Colors.grey.withAlpha(50)
                  ),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withAlpha(70),
                      offset: const Offset(0,5),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Image.asset('assets/image/$imgPath.png', scale: scale,),
              ),
              onTap: () {
                setState(() {
                  selectedIndext = index;
                });
              },
            );
  }
}