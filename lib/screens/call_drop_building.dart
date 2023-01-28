import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/back_button_top.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/write_message.dart';

import '../widgets/text_widget.dart';

class CallDropBuilding extends StatefulWidget {
  const CallDropBuilding({super.key, required this.content, required this.onPressedSubmit});
  final Widget content;
  final VoidCallback onPressedSubmit;

  @override
  State<CallDropBuilding> createState() => _CallDropBuildingState();
}

class _CallDropBuildingState extends State<CallDropBuilding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //! body
            Column(
              children: [
                Expanded(child: _profileAndRating(context)),
                _bottomSection(),
              ],
            ),
            //! Back button
            const Padding(
              padding: EdgeInsets.only(left: 16,top: 20),
              child: Positioned(
                left: 0, top: 0,
                child: BackButtonTop()
                ),
            ),
          ],
        ),
      ),
    );
  }
  //! profile and Rating
  Widget _profileAndRating(BuildContext context) {
    return SizedBox(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              const SizedBox(height: 70,),
              widget.content,
              const SizedBox(height: 70,),
              const TextWidget(
                size: 16, text: 'Please rate the driver',
                color: Colors.grey, fontWeight: FontWeight.w400,
              ),
              _starRow(),
            ],
          ),
          
        ],
      ),
    );
   }
  
  //! write feedback and button 
  Widget _bottomSection() {
    return Column(
      children:[
        const WriteMassage(
          trailling: Icons.edit_rounded, hintText: 'Leave feedback...'),
        _buttonSubmit(),
      ],
    );
  }
  //! button 
  Padding _buttonSubmit() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: ButtonWidget(text: 'Submit',onPressed: widget.onPressedSubmit,),
      );
  }
  //! row of  stars
  Widget _starRow() {
    return Padding(
      padding: const EdgeInsets.only(top:10, bottom: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(var i=0;i<5;i++)
            const Padding(
              padding: EdgeInsets.all(3),
              child: RatingStar(),
            )
          ],
        ),
    );
  }
}

//! Rate Star Class
class RatingStar extends StatefulWidget {
  const RatingStar({super.key});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          isTap = !isTap;
        });
      }),
      child: Icon(
        isTap? Icons.star_rounded:Icons.star_outline_rounded,
        color: Theme.of(context).primaryColor,size: 34,
        ),
    );
  }
}