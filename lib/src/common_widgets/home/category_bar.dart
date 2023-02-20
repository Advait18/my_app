import 'package:flutter/material.dart';
import 'package:my_app/src/common_widgets/home/category.dart';

class MyCategoryBar extends StatefulWidget {
  const MyCategoryBar({super.key});

  @override
  State<MyCategoryBar> createState() => MyCategoryBarState();
}

class MyCategoryBarState extends State<MyCategoryBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.20,
        decoration: const BoxDecoration(
          color: Color(0xFF0C0C0C),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              MyCategory(path: 'assets/images/home_page/new.jfif', name: 'NEW'),
              MyCategory(path: 'assets/images/home_page/tops.jpg', name: 'TOPS'),
              MyCategory(path: 'assets/images/home_page/jackets.jfif', name: 'JACKETS'),
              MyCategory(path: 'assets/images/home_page/pants.jpg', name: 'PANtS'),
            ],
          ),
        ),
      );
  }
}