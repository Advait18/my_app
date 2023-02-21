import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    color: const Color(0xFFFFFFFF)),
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
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 480,
            width: MediaQuery.of(context).size.width * 0.92,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage('assets/images/home_page/img1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 328, 0, 0),
              child: Text(
                'Outwear By Pierre Cardin',
                style: GoogleFonts.ptSerif(
                  fontSize: 48,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 480,
            width: MediaQuery.of(context).size.width * 0.92,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage('assets/images/home_page/img2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 328, 0, 0),
              child: Text(
                'Outwear By Tom Ford',
                style: GoogleFonts.ptSerif(
                  fontSize: 48,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
