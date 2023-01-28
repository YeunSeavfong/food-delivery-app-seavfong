import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../widgets/seach.dart';


class PopularListPage extends StatelessWidget {
  const PopularListPage({Key? key}) : super(key: key);

  static const String routeName = '/popular_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Popular Restaurant',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            floating: false,
            pinned: false,
            leadingWidth: 56,
            leading: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          // const _TopSearchCustomAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/image/Rectangle.png'),
                    title: Text('Popular salad',style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ), ),
                    
                    trailing: Text('\$8',style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Theme.of(context).primaryColor
                    ),),
                  ),
                );
              },
              childCount: 10),
              
            ),
          ),
        ],
      ),
    );
  }
}

// class _TopSearchCustomAppBar extends StatelessWidget {
//   const _TopSearchCustomAppBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverPersistentHeader(
//       pinned: true,
//       floating: true,
//       delegate: _TopSearchCustomAppBarDelegate(
//         minHeight: 120,
//         maxHeight: 120,
//         child:const SearchAndFilterWidget(),
//       ),
//     );
//   }
// }

// class _TopSearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _TopSearchCustomAppBarDelegate({
//     required this.minHeight,
//     required this.maxHeight,
//     required this.child,
//   });

//   final double minHeight;
//   final double maxHeight;
//   final Widget child;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SizedBox.expand(child: child);
//   }

//   @override
//   double get maxExtent => math.max(maxHeight, minHeight);

//   @override
//   double get minExtent => minHeight;

//   @override
//   bool shouldRebuild(_TopSearchCustomAppBarDelegate oldDelegate) {
//     return maxHeight != oldDelegate.maxHeight ||
//         minHeight != oldDelegate.minHeight ||
//         child != oldDelegate.child;
//   }
// }

