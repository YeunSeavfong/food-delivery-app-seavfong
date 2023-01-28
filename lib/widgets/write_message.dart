import 'package:flutter/material.dart';

class WriteMassage extends StatefulWidget {
  const WriteMassage({super.key, required this.trailling, required this.hintText});
  final IconData trailling ;
  final String hintText;

  @override
  State<WriteMassage> createState() => _WriteMassageState();
}

class _WriteMassageState extends State<WriteMassage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              autocorrect: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontSize: 16,),
              ),
            ),
          ),
          Icon(widget.trailling,color: Theme.of(context).primaryColor,)
        ],
      ),
    );
  }
}