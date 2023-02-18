import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/utils/colors.dart';

List<Color> colorizeColors = [
  MyColors.white,
  MyColors.black,
];

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'BASICS',
              textStyle: GoogleFonts.inter(fontSize: 50, fontWeight: FontWeight.bold),
              colors: colorizeColors,
              speed: const Duration(milliseconds: 600),
            ),
          ],
          isRepeatingAnimation: false,
        );
  }
}
