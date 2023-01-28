import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonWidget({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed, 
        child: Text(text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
      ),
    );
  }
}