import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/call_drop_page1.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class ChatCallPage extends StatefulWidget {
  const ChatCallPage({super.key});
  static const routeName = 'chat_call_page';

  @override
  State<ChatCallPage> createState() => _ChatCallPageState();
}

class _ChatCallPageState extends State<ChatCallPage> {
  bool isConnecting = true;

  Future _connecting()async{
    await Future.delayed(
      const Duration(seconds: 4)
    );
  }
  @override
  void initState() {
    super.initState();
    _connecting().then((_) {
      setState(() {
        isConnecting = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 3,child: _userProfile(context),),
          Expanded(flex: 1,child: _bottomButton(context))
        ],
      ),
    );
  }

  Row _bottomButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _closeButton(context),
        const SizedBox(width: 30,),
        _volumeButton()
      ],
    );
  }

  Widget _volumeButton() {
    return CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green.withOpacity(0.2),
        child: Icon(
          isConnecting? Icons.call_rounded: Icons.volume_up_rounded,
          color: Colors.green,size: 30,)
      );
  }

  Widget _closeButton(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, CallDropedPage1.routeName);
        } ,
      child: CircleAvatar(
          radius: 40,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.clear_rounded,color: Colors.white,)),
        ),
    );
  }

  Column _userProfile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(width: 5,color: Theme.of(context).primaryColor),
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/image/profile.png'),
        ),
        TextWidget(size: 24, text: 'Guy Hawkin',color:Theme.of(context).primaryColor,),
        const SizedBox(height: 30,),
        TextWidget(size: 14, text: isConnecting?'Ringing...':'02:15 mins',color: Colors.grey,),
        
      ],
    );
  }
}