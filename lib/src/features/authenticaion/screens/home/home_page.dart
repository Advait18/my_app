import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/common_widgets/home/designer_banners.dart';
import '../../../../common_widgets/home/banner.dart';
import '../../../../common_widgets/home/category_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: const Color(0xFFECECEC).withOpacity(1),
      child: ListView(scrollDirection: Axis.vertical, children: [
        const MyBanner(),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Text(
                'CATEGORIES',
                style: GoogleFonts.nunitoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ),
        const MyCategoryBar(),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Text(
                'TRENDING COLLECTIONS',
                style: GoogleFonts.nunitoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ),
        const DesignerBanner(
            path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fimg1.png?alt=media&token=23acfe36-abcf-4c4e-ad63-fd59d4982f5b',
            text: 'Outwear By Pierre Cardin'),
        const DesignerBanner(
            path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fimg2.png?alt=media&token=41969b0f-ecae-4bd2-a44e-00925798a408',
            text: 'Outwear By Tom Ford'),
      ]),
    );
  }
}
