import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/verify_code_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});
  static const routeName = 'forgot_password_page';

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  
  int selectedIndext = 0;
  static const phoneNumber = '+855 31****0077';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAppBar(title: 'Forgot Password'),
              const SizedBox(height: 20,),
              // _displayChoices(),
              Expanded(
                child: _displayChoices()
              ),


              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ButtonWidget(
                  text: 'Next',
                  onPressed: (() {
                    Navigator.pushNamed(context, VerifyCodePage.routeName);
                  }),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  Column _displayChoices() {
    return Column(
              children: [
                const TextWidget(
                  size: 14, 
                  text: 'This data will be displayed in your account profile for security',
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 20,),
                _buildChoice(
                  index: 0, 
                  icon: Icons.message_rounded,
                  title: 'via SMS', 
                  choiceOption: phoneNumber
                ),
                _buildChoice(
                  index: 1, 
                  icon: Icons.email_rounded,
                  title: 'via Email', 
                  choiceOption: 'ly****ner@gmail.com'
                ),
              ],
            );
  }

  GestureDetector _buildChoice
  ({
    required int index, required IconData icon, required String title, required String choiceOption,
  }){
    return GestureDetector(
      onTap: (() {
        setState(() {
          selectedIndext = index;
        });
      }),
      child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
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
                      color: Colors.grey.withAlpha(50),
                      offset: const Offset(0,5),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon,color: Theme.of(context).primaryColor,),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(size: 14, text: title, fontWeight: FontWeight.w400,),
                          const SizedBox(height: 10,),
                          TextWidget(size: 18, text: choiceOption),
                        ],
                      )
                    )
                  ],
                ),
              ),
    );
  }
}