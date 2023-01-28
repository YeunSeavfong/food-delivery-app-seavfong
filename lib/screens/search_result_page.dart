import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/models/restaurant.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/filter_item.dart';
import 'package:food_delivery_app_practice/widgets/item_card_widget.dart';
import 'package:food_delivery_app_practice/widgets/search_bar_widget.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});
  static const routeName = 'search_result_page';

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
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
            end: Alignment.bottomCenter,)
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([const CustomAppBar(title: 'Find Your Food')])),
              ),
              const SliverAppBar(
                pinned: true,
                leading: Text(''),
                bottom: PreferredSize(preferredSize: Size.fromHeight(30), child: SizedBox()),
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: SearchBar(),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                sliver: SliverAppBar(
                  leading: const Text(''),
                  pinned: true,
                  expandedHeight: 60,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: selectedItems(items: ['Restaurant','Salad','<10km']),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: buildGridView())
            ],
          )
        ),
      ),
    );
  }

  Widget selectedItems({required List<String> items})
  {
    return Wrap(
      children: [
        for(var i=0; i<items.length; i++)
        FilterItem(text: items[i], icon: Icons.clear_rounded,),
      ],
    );
  }
  Widget buildGridView(){
    List<Restaurant> restaurantList = Restaurant.restaurantList();
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        ((context, index) {
          final restaurant = restaurantList[index];
          return ItemCardWidget(
            name: restaurant.name, 
            img: restaurant.imgPath, 
            duration: restaurant.travelDuration);
        }),
        childCount: restaurantList.length,
      ), 
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
    );
  }
}