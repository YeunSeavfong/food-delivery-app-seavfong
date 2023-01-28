import 'package:flutter/material.dart';

class BuyingPage extends StatefulWidget {
  const BuyingPage({super.key});

  @override
  State<BuyingPage> createState() => _BuyingPageState();
}

class _BuyingPageState extends State<BuyingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('Buying')),
    );
  }
}