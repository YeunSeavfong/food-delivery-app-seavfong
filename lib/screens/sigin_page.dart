import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/fill_bio_page.dart';
import 'package:food_delivery_app_practice/screens/forgot_password_page.dart';
import 'package:food_delivery_app_practice/screens/sign_up_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';
import 'package:food_delivery_app_practice/widgets/textfield_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  static const routeName = 'signin_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();
  bool? checkValue = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Image.asset('assets/image/app_logo.png',width: 170,),
                const TextWidget(
                  text: 'Sign in to your account',
                  size: 24,
                ),

                const SizedBox(height: 20,),
                const TextFieldWidget(
                  height: 50,
                  labelText: 'Email or Phone Number', 
                  label: 'Email',
                ),

                const SizedBox(height: 20,),
                const TextFieldWidget(
                  height: 50,
                  labelText: 'Password', 
                  label: 'Password',
                  isObscure: true,
                  type: 'password',
                ),
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _buildCheckbox(context),
                ),
                // sign in button
                ButtonWidget(
                  text: 'Sign in',
                  onPressed: (() {
                    onPressed(FillBioPage.routeName);
                  }),
                ),

                Padding(// forgot password
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextButton(
                    onPressed: () { 
                      onPressed(ForgotPasswordPage.routeName);
                    },
                    child: TextWidget(size: 14, text: 'Forgot password?',color: Theme.of(context).primaryColor,)
                  ),
                ),
                
                Row(//bottom button
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButtonSiginWith(label: 'Facebook',imgPath: 'facebook.png'),
                    buildButtonSiginWith(label: 'Google',imgPath: 'google.png'),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(size: 14, text: "Don't have an account?",fontWeight: FontWeight.w300,),
                    const SizedBox(width: 10,),

                    TextButton(// go to sign up
                      onPressed: () {
                        onPressed(SignUpPage.routeName);
                       },
                      child: TextWidget(size: 14, text: 'Sign up',color: Theme.of(context).primaryColor,)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton buildButtonSiginWith
  ({required String label, required String imgPath}) 
  {
    return ElevatedButton.icon(
                onPressed: (() {
                  
                }), 
                icon: Image.asset('assets/image/$imgPath',scale: label=='Google'? 20:10,), 
                label: TextWidget(size: 16,text:label ,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              );
  }

  Row _buildCheckbox(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Theme.of(context).primaryColor,
          splashRadius: 1,
          value: checkValue, 
          onChanged: ((value) {
            setState(() {
              checkValue = value; // value = true
            });
        })),
        const SizedBox(width: 10,),
        TextWidget(size: 14, text: 'Remember me', color: Theme.of(context).primaryColor,)
      ],);
  }

  void onPressed(String routeName){
    Navigator.pushNamed(context, routeName);
  }
}