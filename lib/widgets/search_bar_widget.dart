import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/common/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.75,
          margin: const EdgeInsets.symmetric(horizontal: 16,),
          padding: const EdgeInsets.symmetric(
            horizontal: 16, ),
          decoration: BoxDecoration(
            color: background,
            border: Border.all(color:const Color(0xFFF4F6F9)),
            borderRadius: BorderRadius.circular(36)
          ),
                      
          child:  TextFormField(
            decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 16,),
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search_rounded)
            ),
            cursorHeight: 3,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).primaryColor.withOpacity(0.1),
          ),
          child: GestureDetector(
            onTap: onPressed,
            child:Icon(Icons.filter_list_rounded,color: Theme.of(context).primaryColor,)),
        ),
      ],
    );
  }
}