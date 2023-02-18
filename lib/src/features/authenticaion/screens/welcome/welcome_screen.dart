// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:my_app/src/utils/colors.dart';

import '../../../../common_widgets/welcome/bg_image.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyColors.black,
      body: FlutterCarousel(
        options: CarouselOptions(
          initialPage: 1,
          height: MediaQuery.of(context).size.height * 0.65,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          slideIndicator: const CircularSlideIndicator(
            indicatorRadius: 3,
            itemSpacing: 10
          ),
          indicatorMargin: 50,
        ),
        items: const [
          MyWelcomeImage(path: 'assets/images/welcome_page/Image1.png'), //0
          MyWelcomeImage(path: 'assets/images/welcome_page/Image2.png'), //1
          MyWelcomeImage(path: 'assets/images/welcome_page/Image3.png'), //2
        ],
      ),
    ));
  }
}


