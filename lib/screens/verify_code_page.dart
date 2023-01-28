import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/main_page.dart';
import 'package:food_delivery_app_practice/screens/password_changed.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});
  static const routeName = 'verify_code_page';

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
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

              Expanded(
                child: _displayVerifyCode()
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ButtonWidget(
                  text: 'Next',
                  onPressed: (() {
                    Navigator.pushReplacementNamed(context, PasswordChanged.routeName);
                  }),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  Column _displayVerifyCode(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const TextWidget(size: 14, text: 'Code has been sent to $phoneNumber', fontWeight: FontWeight.w400,),
        const SizedBox(height: 30,),

        _buildPincode(),

        const SizedBox(height: 30,),
        const TextWidget(size: 14, text: 'Resend code in 40 s',fontWeight: FontWeight.w500,)
      ],
    );
  }

  Form _buildPincode() {
    return Form(
        key: formKey,
        child: PinCodeTextField(
          appContext: context, 
          length: 4,
          keyboardType: TextInputType.number,
          pastedTextStyle: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),
          pinTheme: PinTheme(
            fieldHeight: 60,
            fieldWidth: 70,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(20),
            borderWidth: 1,
            activeFillColor: Colors.white,
          ),
          onChanged: ((value) {
            
          }),
          
          validator: (value) {
            if(value!.length<4){
              return 'Enter code to verify!';
            }
            else{
              return null;
            }
          },
        ),
      );
  }
}