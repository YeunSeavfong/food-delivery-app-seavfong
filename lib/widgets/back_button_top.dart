
import 'package:flutter/material.dart';

class BackButtonTop extends StatelessWidget {
  const BackButtonTop({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {Navigator.pop(context);}),
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        // padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Theme.of(context).primaryColor.withOpacity(0.7),
          size: 20,
        ),
      ),
    );
  }
}