import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/chat_content.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/user_chat_bar.dart';
import 'package:food_delivery_app_practice/widgets/write_message.dart';

import '../widgets/text_widget.dart';

class ChatBodyPage extends StatefulWidget {
  const ChatBodyPage({super.key});
  static const routeName ='chat_body_page';

  @override
  State<ChatBodyPage> createState() => _ChatBodyPageState();
}

class _ChatBodyPageState extends State<ChatBodyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _chatBar(),
            const UserChatBar(),
            const Expanded(child: ChatContent()),
            const WriteMassage(hintText: 'Write massage...',trailling: Icons.send_outlined)
          ],
        ),
      ),
    );
  }

  Widget _chatBar(){
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: CustomAppBar(title: 'Chat'),
      );
  }

}