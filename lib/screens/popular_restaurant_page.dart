import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/models/restaurant.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';
import 'package:food_delivery_app_practice/widgets/item_card_widget.dart';
import 'package:food_delivery_app_practice/widgets/main_screen_bg.dart';
import 'package:food_delivery_app_practice/widgets/search_bar_widget.dart';

class PopularRestaurantPage extends StatefulWidget {
  const PopularRestaurantPage({super.key});
  static const routeName = 'pop_restaurant_page';

  @override
  State<PopularRestaurantPage> createState() => _PopularRestaurantPageState();
}

class _PopularRestaurantPageState extends State<PopularRestaurantPage> {

  List<Restaurant> restaurantList = Restaurant.restaurantList();
  
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
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const CustomAppBar(title: 'Popular Restaurant')
                    ]
                  ),
                ),
              ),
              const SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                leading: Text(''),
                bottom: PreferredSize(preferredSize: Size.fromHeight(20), child: SizedBox()),
                flexibleSpace: FlexibleSpaceBar(
                  background: SearchBar(),
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

  SliverGrid buildGridView() {
    return SliverGrid(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        ((context, index) {
          return ItemCardWidget(
            name: restaurantList[index].name, 
            img: restaurantList[index].imgPath, 
            duration: restaurantList[index].travelDuration,
          );
        }),
        childCount: restaurantList.length,
      )
    );
  }
}