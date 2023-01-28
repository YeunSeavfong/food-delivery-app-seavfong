import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';
class FilterItem extends StatefulWidget {
  const FilterItem({super.key, required this.text, this.icon});
  final String text ;
  final IconData? icon;

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal:16, vertical: 8),
        margin: const EdgeInsets.only(left: 16,bottom: 16),
        decoration:  BoxDecoration(
          color: isSelect?Theme.of(context).primaryColor :Colors.white,
          border: Border.all(color: Theme.of(context).primaryColor,width: 1.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextWidget(size: 14,text: widget.text,color: isSelect? Colors.white: Theme.of(context).primaryColor,),
        // child: Row(
        //   children: [
        //     TextWidget(size: 14,text: widget.text,color: isSelect? Colors.white: Theme.of(context).primaryColor,),
        //     Icon(widget.icon,size: 10,),
        //   ],
        // ),
      ),
    );
  }
}