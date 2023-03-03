import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class MyBanner extends StatefulWidget {
  const MyBanner({super.key});

  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.29,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        slideIndicator: const CircularSlideIndicator(
          indicatorRadius: 3.5,
          itemSpacing: 10,
          alignment: Alignment.topRight,
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),

        indicatorMargin: 220,
      ),
      items: [
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fbanner.png?alt=media&token=834621e5-03e7-410c-b7bf-633347883f97',
              fit: BoxFit.fitWidth,
              fadeInDuration: const Duration(milliseconds: 100),
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2FShop%20Now.png?alt=media&token=05c05e2b-c5b6-463a-8614-89b37074ab94',
                height: 50,
                width: 100,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fmens_banner.png?alt=media&token=4f3c51c5-c54a-4384-9626-2d9c596a8b49',
              fit: BoxFit.fitWidth,
              fadeInDuration: const Duration(milliseconds: 100),
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2FShop%20Now.png?alt=media&token=05c05e2b-c5b6-463a-8614-89b37074ab94',
                height: 50,
                width: 100,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            )
          ],
        ),
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fwomen_banner.png?alt=media&token=ed7f45ea-116c-410c-a3ca-96e25f88012a',
              fit: BoxFit.fitWidth,
              fadeInDuration: const Duration(milliseconds: 100),
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2FShop%20Now.png?alt=media&token=05c05e2b-c5b6-463a-8614-89b37074ab94',
                height: 50,
                width: 100,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            )
          ],
        ),
      ],
    );
  }
}
