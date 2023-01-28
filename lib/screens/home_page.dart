import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/models/food.dart';
import 'package:food_delivery_app_practice/screens/popular_menu_page.dart';
import 'package:food_delivery_app_practice/screens/popular_restaurant_page.dart';
import 'package:food_delivery_app_practice/widgets/banner.dart';
import 'package:food_delivery_app_practice/widgets/item_card_widget.dart';
import 'package:food_delivery_app_practice/widgets/search_bar_widget.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

import '../models/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Restaurant> restaurantList = Restaurant.restaurantList();
  List<Food> foodMenu = Food.foodMenu();
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
                sliver: _buildSliverAppBar(context)
              ),
              //search bar
              const SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20), child: SizedBox(),),
                flexibleSpace:FlexibleSpaceBar(
                  background: SearchBar(),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const BannerWidget(imgPath: 'assets/image/Image_3.png')
                  ])
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  _sectionTitle(
                    title: 'Popular Restaurant',
                    onPressed: () => Navigator.pushNamed(context, PopularRestaurantPage.routeName),),
                  _popularRestaurantSection(),
                  _sectionTitle(title: 'Popular Menu',
                    onPressed: () => Navigator.pushNamed(context, PopularMenuPage.routeName),
                  ),
                ])
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  ((context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal:16,vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
        
                      ),
                      child: ListTile(
                        leading: Image.asset(foodMenu[index].imgPath),
                        title: TextWidget(size: 16,text: foodMenu[index].name,),
                        trailing: TextWidget(
                          size: 24,color: Theme.of(context).primaryColor, 
                          text: "\$${foodMenu[index].price+index*1.5}",),
                        subtitle: TextWidget(
                          size: 14, 
                          text: foodMenu[index].restoName,color: 
                          Colors.grey,fontWeight: FontWeight.w400,),
                      ),
                    );
                  }),
                  childCount: 4,
                )
              )
            ],
          ),
        ),
      ),
    );
  }// body
// popular restaurant section
  Widget _popularRestaurantSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:[
          for(var i=0;i<restaurantList.length-2;i++)
          Container(
              margin:const EdgeInsets.symmetric(
                horizontal: 16),
              child: ItemCardWidget(
                img: restaurantList[i].imgPath,
                name: restaurantList[i].name,
                duration: restaurantList[i].travelDuration,
              ),
          ),
        ],
      ),
    );
  }
// title section
  Container _sectionTitle({required String title, Function()? onPressed}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextWidget(size: 20, text: 'Popular Restaurant',),
          TextButton(
            onPressed:onPressed,
            child: TextWidget(
              size: 14,text: 'See all',
              color: Theme.of(context).primaryColor,)
          )
        ],
      ),
    );
  }

// app bar section
  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Theme.of(context).primaryColor,
        ),
        child: const Icon(Icons.menu_rounded,color: Colors.white,),
      ),
      title: const TextWidget(size: 24, text: 'Hello, Daniel!',),
      actions: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left:5,top:10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.02),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            Icons.notifications_active_rounded,
            color: Theme.of(context).primaryColor,),
        ),
      ],
    );
  }
}