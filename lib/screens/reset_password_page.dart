import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/password_changed.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';
import 'package:food_delivery_app_practice/widgets/textfield_widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});
  static const routeName = 'reset_password_page';

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

  bool? isCheck = false;
  final formKey = GlobalKey<FormState>();

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
                const CustomAppBar(title: 'Reset Password'),
                _buildInputSection(),
            
                SizedBox(height: MediaQuery.of(context).size.height*0.35,),
                ButtonWidget(
                  text: 'Save',
                  onPressed:(() {
                    Navigator.pushReplacementNamed(context, PasswordChanged.routeName);
                  })
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
  
  Column _buildInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: TextWidget(size: 16, text: 'Create new password',fontWeight: FontWeight.w400,),
        ),

        // ignore: prefer_const_constructors
        TextFieldWidget(
          height: 50,
          labelText: 'Enter new password', 
          label: 'New Password', type: 'password',
        ),

        const SizedBox(height: 20,),
        // ignore: prefer_const_constructors
        TextFieldWidget(
          height: 50,
          labelText: 'Enter confirm password', 
          label: 'Confirm Password',type: 'password',
        ),

        _buildCheckBox()
      ],
    );
  }

  Row _buildCheckBox() {
    return Row(
        children: [
          Checkbox(
            activeColor: Theme.of(context).primaryColor,
            value: isCheck, 
            splashRadius: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            onChanged:((value) {
              setState(() {
                isCheck = value;
              });
            }) 
          ),
          const SizedBox(width: 10,),
          TextWidget(
            size: 16, 
            text: 'Remember me',
            color: Theme.of(context).primaryColor,
          )
        ],
      );
  }
}