import 'package:flutter/cupertino.dart';

import 'message_widget.dart';

class ChatContent extends StatefulWidget {
  const ChatContent({super.key});

  @override
  State<ChatContent> createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        itemCount: 6,
        itemBuilder:((context, index) {
          return MessageWidget(
            isMe: index%2==0? true: false,
            message: index%2==0?'When you come here?':"I'll be there soon.",);
        })
      ),
    );
  }
}