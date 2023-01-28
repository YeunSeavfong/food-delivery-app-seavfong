import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/common/constants.dart';
import 'package:food_delivery_app_practice/screens/chat_page.dart';
import 'package:food_delivery_app_practice/screens/home_page.dart';
import 'package:food_delivery_app_practice/screens/profile_page.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

import 'buying_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routeName = 'main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _pages= [
    const HomePage(),
    const BuyingPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex]
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal:16, vertical: 8),
          padding: const EdgeInsets.all(16),
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          color: Colors.white
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomBarItem(icon: Icons.home_rounded, label: 'Home', index: 0),
              _buildBottomBarItem(icon: Icons.add_shopping_cart_rounded, label: 'Buy', index: 1),
              _buildBottomBarItem(icon: Icons.message_rounded, label: 'Chat', index: 2),
              _buildBottomBarItem(icon: Icons.person, label: 'Profile', index: 3),

          ]),
        ),
      ),
    );
  }

  Widget _buildBottomBarItem({
    required IconData icon,
    required String label,
    required int index,
    }) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeInCubic,
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:_selectedIndex==index? primaryWith01:Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Theme.of(context).primaryColor,),
            const SizedBox(width: 8,),
            if(_selectedIndex == index)
              TextWidget(size: 14, text: label,color: Theme.of(context).primaryColor,),
            const Text(''),
        ],)
      ),
    );
  }
}