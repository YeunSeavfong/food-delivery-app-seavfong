
import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({
    Key? key,
    required this.isMe,
    required this.message,
  }) : super(key: key);
  final bool isMe;
  final String message;

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.isMe?MainAxisAlignment.end:MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: widget.isMe?Theme.of(context).primaryColor :Colors.grey.withAlpha(20),
            borderRadius: BorderRadius.circular(16)
          ),
          child: TextWidget(
            size: 16, 
            text: widget.message,fontWeight: 
            FontWeight.w400,
            color: widget.isMe? Colors.white: Colors.black,
            ),
        )
      ],
    );
  }
}