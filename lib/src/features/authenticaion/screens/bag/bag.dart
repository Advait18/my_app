import 'package:flutter/material.dart';
import 'package:my_app/src/common_widgets/bag/item_card.dart';

import '../../../../utils/colors.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.black,
      body: ItemCard(
        name: 'Oversized Fit Zip-Through Hoodie',
        image:
            'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fcb%2F6f%2Fcb6f04c7e38fdeeba1586dd801390eda7442db15.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$70',
      ),
    );
  }
}
