import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/models/food.dart';
import 'package:food_delivery_app_practice/screens/filter_search_page.dart';
import 'package:food_delivery_app_practice/widgets/main_screen_bg.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/text_widget.dart';

class PopularMenuPage extends StatefulWidget {
  const PopularMenuPage({super.key});
  static const routeName = 'popular_menu_page';

  @override
  State<PopularMenuPage> createState() => _PopularMenuPageState();
}

class _PopularMenuPageState extends State<PopularMenuPage> {

  List<Food> foodMenu = Food.foodMenu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                leading: const Text(''),
                bottom: const PreferredSize(preferredSize: Size.fromHeight(20), child: SizedBox()),
                flexibleSpace: FlexibleSpaceBar(
                  background: SearchBar(
                    onPressed:(() => Navigator.pushNamed(context, FilterSearchPage.routeName)),),
                ),
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
                  childCount: foodMenu.length,
                )
              )
            ],
          ),
        )
      ),
    );
  }
}