import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/features/authenticaion/screens/search/results.dart';
import 'package:my_app/src/features/authenticaion/screens/search/search.dart';

import '../../../../common_widgets/search/cards.dart';
import '../../../../utils/colors.dart';
import 'Products.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  List<Product> products = allProducts;
  final _searchController = TextEditingController();
  bool searched = false;
  Results myresults = Results();
  String myquery = '';

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (searched == false) {
      if (myquery != '') {
        body = ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    cacheManager: Search.customCacheManager,
                    imageUrl: product.image,
                    fit: BoxFit.fitWidth,
                    width: 40,
                    height: 90,
                    fadeInDuration: const Duration(milliseconds: 100),
                  ),
                ),
                title: Text(product.name),
                onTap: () => context.go('/home'), //TODO: change this route
              ),
            );
          },
        );
      } else {
        body = Container();
      }
    } else {
      body = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myresults.results.isEmpty)
                    const Text('No Products found...')
                  else
                    myresults.results[0],
                  if (myresults.results.length >= 2) myresults.results[1],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myresults.results.length >= 3) myresults.results[2],
                  if (myresults.results.length >= 4) myresults.results[3],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myresults.results.length >= 5) myresults.results[4],
                  if (myresults.results.length >= 6) myresults.results[5],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myresults.results.length >= 7) myresults.results[6],
                  if (myresults.results.length >= 8) myresults.results[7],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myresults.results.length >= 9) myresults.results[8],
                  if (myresults.results.length >= 10) myresults.results[9],
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: MyColors.black,
      appBar: AppBar(
        backgroundColor: MyColors.black,
        leading: GestureDetector(
          onTap: () => context.pushReplacement('/search'),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.back,
            ),
          ),
        ),
        title: SizedBox(
          height: 40,
          width: 300,
          child: CupertinoSearchTextField(
            controller: _searchController,
            style: GoogleFonts.nunitoSans(color: MyColors.white),
            onChanged: suggestProduct,
            onSubmitted: searchProduct,
          ),
        ),
      ),
      body: body,
    );
  }

  void suggestProduct(String query) {
    Search.ontap = false;
    final suggestions = allProducts.where((product) {
      final productName = product.name.toLowerCase();
      final input = query.toLowerCase();

      return productName.contains(input);
    }).toList();

    setState(() {
      myquery = query;
      searched = false;
      products = suggestions;
    });
  }

  void searchProduct(String query) {
    List<Cards> allCards = const [
      Cards(
        name: 'Oversized Fit Zip-Through Hoodie',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fcb%2F6f%2Fcb6f04c7e38fdeeba1586dd801390eda7442db15.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$70',
      ),
      Cards(
        name: 'Oversized Fit Cotton Sweatshirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fd7%2Fbd%2Fd7bdfa7c5d6440590366fc2fe8341f6f3df0d08c.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$90',
      ),
      Cards(
        name: 'Relaxed Fit Hoodie',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F18%2Fe6%2F18e69538be4fa641e16294d7dbb9bdcf15a427c7.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$120',
      ),
      Cards(
        name: 'Cotton Sweatshirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fe4%2Fca%2Fe4cab543414e048ee9874d81ea8e5d44f23bc3e7.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$65',
      ),
      ////////////////////////////////////////////////////////////////
      Cards(
        name: 'Regular Fit Polo Shirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F49%2Fd8%2F49d8309a78a49fc41e43f517cf0ed85e14121204.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D',
        price: '\$82',
      ),
      Cards(
        name: 'Thermolite Oversized Fit Sweatshirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F2e%2F08%2F2e08b9720baf239ad9e1b740c2826fa362f8909c.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$70',
      ),
      Cards(
        name: 'Oversized zip-top sweatshirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F39%2Ffc%2F39fc337ff046187e305ed7a7fec643d6983cedd1.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$85',
      ),
      Cards(
        name: 'Printed sweatshirt',
        image: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F64%2F6e%2F646ee916770cf0d590b05695ab9132590106a4b0.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]',
        price: '\$100',
      ),
    ];

    List<Cards> result = allCards.where((card) {
      final cardName = card.name.toLowerCase();
      final input = query.toLowerCase();

      return cardName.contains(input);
    }).toList();

    myresults.results.clear();
    for (int i = 0; i < result.length; i++) {
      myresults.results.add(result[i]);
    }
    setState(() {
      searched = true;
      myresults = myresults;
    });
  }
}
