import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/seach.dart';
import '../widgets/text_widget.dart';
import 'chat_body_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                sliver: buildAppbar(context)
              ),
              
              const SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 20),
                sliver: SliverAppBar(
                  pinned: true,
                  bottom: PreferredSize(preferredSize: Size.fromHeight(20), child: SizedBox()),
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SearchWidget(),
                  ),
                ),
              ),

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  ((context, index) {
                    return chatListTile();
                  }),
                  childCount: 10
                )
              )
            ],
          )
        ),
      ),
    );
  }

  SliverAppBar buildAppbar(BuildContext context) {
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
      title: const TextWidget(size: 24, text: 'Chat',),
    );
  }

  Widget chatListTile(){
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, ChatBodyPage.routeName)),
      child: Stack(
        children: [
          Container(
            height: 90,
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            padding: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 35,
                    child: Image.asset('assets/image/profile.png'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextWidget(size: 20, text: 'Dianne Russel'),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(
                            size: 14, text: 'Hello my friend!',
                            fontWeight: FontWeight.w400, color: Colors.grey,),
                          TextWidget(
                            size: 14, text: '20:01', 
                            color: Colors.grey,fontWeight: FontWeight.w400,),
                        ],
                      )
                    ],
                  ))
              ],
            ),
          ),
          Positioned(
            right: 40,
            top: 25,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child:const TextWidget(size: 16, text: '3',color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}