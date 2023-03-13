import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  List<Color> colorizeColors = [
    MyColors.white,
    MyColors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'BASICS',
              textStyle: GoogleFonts.inter(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: MyColors.white),
              colors: colorizeColors,
              speed: const Duration(milliseconds: 600),
            ),
          ],
          isRepeatingAnimation: false,
          onFinished: () => context.pushReplacement('/main'),
        ),
      ),
    );
  }

}
