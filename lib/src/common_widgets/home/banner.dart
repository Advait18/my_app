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
        autoPlayInterval: const Duration(seconds: 4),
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
            Image.asset(
              'assets/images/home_page/banner.png',
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: Image.asset(
                'assets/images/home_page/Shop Now.png',
                height: 50,
                width: 100,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/home_page/mens_banner.png',
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: Image.asset(
                'assets/images/home_page/Shop Now.png',
                height: 50,
                width: 100,
              ),
            )
          ],
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/home_page/women_banner.png',
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 20,
              left: 150,
              child: Image.asset(
                'assets/images/home_page/Shop Now.png',
                height: 50,
                width: 100,
              ),
            )
          ],
        ),
      ],
    );
  }
}
