import 'package:flutter/material.dart';

import '../common/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width-32,
          margin: const EdgeInsets.symmetric(horizontal: 16,),
          padding: const EdgeInsets.symmetric(horizontal: 16, ),
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
      ],
    );
  }
}