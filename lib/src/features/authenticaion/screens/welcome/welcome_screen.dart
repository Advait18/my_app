// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                FlutterCarousel(
                  options: CarouselOptions(
                    initialPage: 1,
                    height: MediaQuery.of(context).size.height * 0.70,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    slideIndicator: const CircularSlideIndicator(
                        indicatorRadius: 3, itemSpacing: 10),
                    indicatorMargin: 80,
                  ),
                  items: const [
                    MyWelcomeImage(
                        path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fwelcome%2FImage1.png?alt=media&token=142806c6-8c2d-4dcc-9553-684b4cc0caff',
                        text: 'FOR THE MINIMALISTS'), //0
                    MyWelcomeImage(
                        path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fwelcome%2FImage2.png?alt=media&token=e6d6704e-2ba2-4da7-9bc0-9a67d32e9924',
                        text: 'HUSTLE IN STYLE'), //1
                    MyWelcomeImage(
                        path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fwelcome%2FImage3.png?alt=media&token=9e205b49-be41-471b-aa8c-438cbfab8441',
                        text: 'EXCLUSIVE SPORTS WEAR'), //2
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () => context.pushReplacement('/login'),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.transparent),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Skip',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: MyColors.white,
                            ),
                          ),
                          const Icon(
                            CupertinoIcons.right_chevron,
                            color: MyColors.white,
                            size: 20,
                            weight: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 75,
              ),
              child: Text(
                'Matching Simplicity and Comfort for your daily basic needs',
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: MyColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: ElevatedButton(
                      onPressed: () => context.pushReplacement('/signup'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white70;
                            } else {
                              return MyColors.white;
                            }
                          },
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'REGISTER',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: MyColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: MyColors.white,
                          width: 0.3,
                        ),
                      ),
                      onPressed: () => context.pushReplacement('/login'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
