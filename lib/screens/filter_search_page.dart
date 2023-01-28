import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/search_result_page.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/filter_item.dart';
import 'package:food_delivery_app_practice/widgets/search_bar_widget.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class FilterSearchPage extends StatefulWidget {
  const FilterSearchPage({super.key});
  static const routeName = 'filter_page';

  @override
  State<FilterSearchPage> createState() => _FilterSearchPageState();
}

class _FilterSearchPageState extends State<FilterSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFF4F6F9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: CustomAppBar(title: 'Find Your Food')
              ),

              const SearchBar(),

              filterMenu(title: 'Type', items: ['Restaurant', 'Menu']),
              filterMenu(title: 'Location', items: ['1km','<5km','>10km','<10km']),
              filterMenu(
                title: 'Food', 
                items: ['Cake','Salad','Plasta','Desert','Soup','Main Course']),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ButtonWidget(
                  text: 'Search',
                  onPressed: (() => Navigator.pushNamed(context,SearchResultPage.routeName))
                ),
              )
            ],
          )
        ),
      ),
    );
  }

  Widget filterMenu({required String title,required List<String> items}){
    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,bottom: 16),
            child: TextWidget(size: 20, text: title),
          ),
          Wrap(
            children: [
              for(var i=0; i<items.length; i++)
              FilterItem(text: items[i]),
            ]
          )
        ],
      ),
    );
  }
}