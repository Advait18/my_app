import 'package:flutter/material.dart';
import '../../../../common_widgets/wishlist/fav_card.dart';
import '../../../../utils/colors.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.black,
      body: FavCard(
        name: 'Oversized Fit Cotton Sweatshirt',
        image:
            'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fd7%2Fbd%2Fd7bdfa7c5d6440590366fc2fe8341f6f3df0d08c.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$70',
      ),
    );
  }
}
